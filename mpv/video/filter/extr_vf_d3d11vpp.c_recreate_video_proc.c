
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int levels; int space; } ;
struct TYPE_17__ {TYPE_2__ color; int h; int w; } ;
struct priv {int video_proc; int video_ctx; TYPE_3__ params; int vp_enum; int video_dev; TYPE_1__* opts; int c_h; int c_w; int d3d_frame_format; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_22__ {int RateConversionCapsCount; } ;
struct TYPE_21__ {int YCbCr_Matrix; int Nominal_Range; } ;
struct TYPE_20__ {int OutputHeight; int OutputWidth; int InputHeight; int InputWidth; int InputFrameFormat; } ;
struct TYPE_19__ {int ProcessorCaps; } ;
struct TYPE_18__ {int bottom; int right; } ;
struct TYPE_15__ {int mode; } ;
typedef TYPE_4__ RECT ;
typedef int HRESULT ;
typedef TYPE_5__ D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS ;
typedef TYPE_6__ D3D11_VIDEO_PROCESSOR_CONTENT_DESC ;
typedef TYPE_7__ D3D11_VIDEO_PROCESSOR_COLOR_SPACE ;
typedef TYPE_8__ D3D11_VIDEO_PROCESSOR_CAPS ;


 int D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_NORMAL ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int ID3D11VideoContext_VideoProcessorSetOutputColorSpace (int ,int ,TYPE_7__*) ;
 int ID3D11VideoContext_VideoProcessorSetStreamAutoProcessingMode (int ,int ,int ,int ) ;
 int ID3D11VideoContext_VideoProcessorSetStreamColorSpace (int ,int ,int ,TYPE_7__*) ;
 int ID3D11VideoContext_VideoProcessorSetStreamOutputRate (int ,int ,int ,int ,int ,int ) ;
 int ID3D11VideoContext_VideoProcessorSetStreamSourceRect (int ,int ,int ,int ,TYPE_4__*) ;
 int ID3D11VideoDevice_CreateVideoProcessor (int ,int ,int,int *) ;
 int ID3D11VideoDevice_CreateVideoProcessorEnumerator (int ,TYPE_6__*,int *) ;
 int ID3D11VideoProcessorEnumerator_GetVideoProcessorCaps (int ,TYPE_8__*) ;
 int ID3D11VideoProcessorEnumerator_GetVideoProcessorRateConversionCaps (int ,int,TYPE_5__*) ;
 int MP_CSP_BT_601 ;
 int MP_CSP_LEVELS_TV ;
 int MP_ERR (struct mp_filter*,char*) ;
 int MP_VERBOSE (struct mp_filter*,char*,...) ;
 int MP_WARN (struct mp_filter*,char*) ;
 int TRUE ;
 int destroy_video_proc (struct mp_filter*) ;

__attribute__((used)) static int recreate_video_proc(struct mp_filter *vf)
{
    struct priv *p = vf->priv;
    HRESULT hr;

    destroy_video_proc(vf);

    D3D11_VIDEO_PROCESSOR_CONTENT_DESC vpdesc = {
        .InputFrameFormat = p->d3d_frame_format,
        .InputWidth = p->c_w,
        .InputHeight = p->c_h,
        .OutputWidth = p->params.w,
        .OutputHeight = p->params.h,
    };
    hr = ID3D11VideoDevice_CreateVideoProcessorEnumerator(p->video_dev, &vpdesc,
                                                          &p->vp_enum);
    if (FAILED(hr))
        goto fail;

    D3D11_VIDEO_PROCESSOR_CAPS caps;
    hr = ID3D11VideoProcessorEnumerator_GetVideoProcessorCaps(p->vp_enum, &caps);
    if (FAILED(hr))
        goto fail;

    MP_VERBOSE(vf, "Found %d rate conversion caps. Looking for caps=0x%x.\n",
               (int)caps.RateConversionCapsCount, p->opts->mode);

    int rindex = -1;
    for (int n = 0; n < caps.RateConversionCapsCount; n++) {
        D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS rcaps;
        hr = ID3D11VideoProcessorEnumerator_GetVideoProcessorRateConversionCaps
                (p->vp_enum, n, &rcaps);
        if (FAILED(hr))
            goto fail;
        MP_VERBOSE(vf, "  - %d: 0x%08x\n", n, (unsigned)rcaps.ProcessorCaps);
        if (rcaps.ProcessorCaps & p->opts->mode) {
            MP_VERBOSE(vf, "       (matching)\n");
            if (rindex < 0)
                rindex = n;
        }
    }

    if (rindex < 0) {
        MP_WARN(vf, "No fitting video processor found, picking #0.\n");
        rindex = 0;
    }



    hr = ID3D11VideoDevice_CreateVideoProcessor(p->video_dev, p->vp_enum, rindex,
                                                &p->video_proc);
    if (FAILED(hr)) {
        MP_ERR(vf, "Failed to create D3D11 video processor.\n");
        goto fail;
    }


    RECT src_rc = {
        .right = p->params.w,
        .bottom = p->params.h,
    };
    ID3D11VideoContext_VideoProcessorSetStreamSourceRect(p->video_ctx,
                                                         p->video_proc,
                                                         0, TRUE, &src_rc);


    ID3D11VideoContext_VideoProcessorSetStreamAutoProcessingMode(p->video_ctx,
                                                                 p->video_proc,
                                                                 0, FALSE);

    ID3D11VideoContext_VideoProcessorSetStreamOutputRate(p->video_ctx,
                                                         p->video_proc,
                                                         0,
                                                         D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_NORMAL,
                                                         FALSE, 0);

    D3D11_VIDEO_PROCESSOR_COLOR_SPACE csp = {
        .YCbCr_Matrix = p->params.color.space != MP_CSP_BT_601,
        .Nominal_Range = p->params.color.levels == MP_CSP_LEVELS_TV ? 1 : 2,
    };
    ID3D11VideoContext_VideoProcessorSetStreamColorSpace(p->video_ctx,
                                                         p->video_proc,
                                                         0, &csp);
    ID3D11VideoContext_VideoProcessorSetOutputColorSpace(p->video_ctx,
                                                         p->video_proc,
                                                         &csp);

    return 0;
fail:
    destroy_video_proc(vf);
    return -1;
}
