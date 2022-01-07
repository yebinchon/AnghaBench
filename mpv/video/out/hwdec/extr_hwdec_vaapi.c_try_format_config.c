
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_hwdec {struct priv_owner* priv; } ;
struct priv_owner {TYPE_1__* ctx; } ;
struct TYPE_6__ {scalar_t__* valid_sw_formats; } ;
struct TYPE_5__ {int av_device_ref; } ;
typedef int AVVAAPIHWConfig ;
typedef TYPE_2__ AVHWFramesConstraints ;


 scalar_t__ AV_PIX_FMT_NONE ;
 int MP_WARN (struct ra_hwdec*,char*) ;
 TYPE_2__* av_hwdevice_get_hwframe_constraints (int ,int *) ;
 int av_hwframe_constraints_free (TYPE_2__**) ;
 int try_format_pixfmt (struct ra_hwdec*,scalar_t__) ;

__attribute__((used)) static void try_format_config(struct ra_hwdec *hw, AVVAAPIHWConfig *hwconfig)
{
    struct priv_owner *p = hw->priv;
    AVHWFramesConstraints *fc =
            av_hwdevice_get_hwframe_constraints(p->ctx->av_device_ref, hwconfig);
    if (!fc) {
        MP_WARN(hw, "failed to retrieve libavutil frame constraints\n");
        return;
    }
    for (int n = 0; fc->valid_sw_formats &&
                    fc->valid_sw_formats[n] != AV_PIX_FMT_NONE; n++)
        try_format_pixfmt(hw, fc->valid_sw_formats[n]);
    av_hwframe_constraints_free(&fc);
}
