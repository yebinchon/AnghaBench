
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwdec_devs; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {int log; int global; TYPE_1__* priv; } ;
struct hwdec_info {int lavc_device; scalar_t__ copying; } ;
struct hwcontext_fns {int * (* create_dev ) (int ,int ,struct hwcontext_create_dev_params*) ;} ;
struct hwcontext_create_dev_params {int probing; } ;
typedef int AVBufferRef ;


 int assert (int ) ;
 int av_hwdevice_ctx_create (int **,int ,int *,int *,int ) ;
 int * hwdec_devices_get_lavc (scalar_t__,int ) ;
 int hwdec_devices_request_all (scalar_t__) ;
 struct hwcontext_fns* hwdec_get_hwcontext_fns (int ) ;
 int * stub1 (int ,int ,struct hwcontext_create_dev_params*) ;

__attribute__((used)) static AVBufferRef *hwdec_create_dev(struct mp_filter *vd,
                                     struct hwdec_info *hwdec,
                                     bool autoprobe)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    assert(hwdec->lavc_device);

    if (hwdec->copying) {
        const struct hwcontext_fns *fns =
            hwdec_get_hwcontext_fns(hwdec->lavc_device);
        if (fns && fns->create_dev) {
            struct hwcontext_create_dev_params params = {
                .probing = autoprobe,
            };
            return fns->create_dev(vd->global, vd->log, &params);
        } else {
            AVBufferRef* ref = ((void*)0);
            av_hwdevice_ctx_create(&ref, hwdec->lavc_device, ((void*)0), ((void*)0), 0);
            return ref;
        }
    } else if (ctx->hwdec_devs) {
        hwdec_devices_request_all(ctx->hwdec_devs);
        return hwdec_devices_get_lavc(ctx->hwdec_devs, hwdec->lavc_device);
    }

    return ((void*)0);
}
