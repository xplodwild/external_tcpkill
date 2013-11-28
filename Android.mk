LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := \
	external/libpcap \
	external/libnet/include

LOCAL_SRC_FILES := tcpkill.c pcaputil.c

LOCAL_MODULE := tcpkill
LOCAL_SHARED_LIBRARIES:= libcutils
LOCAL_STATIC_LIBRARIES := libpcap libnet
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
