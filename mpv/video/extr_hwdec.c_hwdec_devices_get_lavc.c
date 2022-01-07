
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {int dummy; } ;
struct mp_hwdec_ctx {int av_device_ref; } ;
struct AVBufferRef {int dummy; } ;


 struct AVBufferRef* av_buffer_ref (int ) ;
 struct mp_hwdec_ctx* hwdec_devices_get_by_lavc (struct mp_hwdec_devices*,int) ;

struct AVBufferRef *hwdec_devices_get_lavc(struct mp_hwdec_devices *devs,
                                           int av_hwdevice_type)
{
    struct mp_hwdec_ctx *ctx = hwdec_devices_get_by_lavc(devs, av_hwdevice_type);
    if (!ctx)
        return ((void*)0);
    return av_buffer_ref(ctx->av_device_ref);
}
