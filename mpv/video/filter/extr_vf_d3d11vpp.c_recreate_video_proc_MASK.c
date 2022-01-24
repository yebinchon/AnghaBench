#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  levels; int /*<<< orphan*/  space; } ;
struct TYPE_17__ {TYPE_2__ color; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct priv {int /*<<< orphan*/  video_proc; int /*<<< orphan*/  video_ctx; TYPE_3__ params; int /*<<< orphan*/  vp_enum; int /*<<< orphan*/  video_dev; TYPE_1__* opts; int /*<<< orphan*/  c_h; int /*<<< orphan*/  c_w; int /*<<< orphan*/  d3d_frame_format; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_22__ {int RateConversionCapsCount; } ;
struct TYPE_21__ {int YCbCr_Matrix; int Nominal_Range; } ;
struct TYPE_20__ {int /*<<< orphan*/  OutputHeight; int /*<<< orphan*/  OutputWidth; int /*<<< orphan*/  InputHeight; int /*<<< orphan*/  InputWidth; int /*<<< orphan*/  InputFrameFormat; } ;
struct TYPE_19__ {int ProcessorCaps; } ;
struct TYPE_18__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
struct TYPE_15__ {int mode; } ;
typedef  TYPE_4__ RECT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_5__ D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS ;
typedef  TYPE_6__ D3D11_VIDEO_PROCESSOR_CONTENT_DESC ;
typedef  TYPE_7__ D3D11_VIDEO_PROCESSOR_COLOR_SPACE ;
typedef  TYPE_8__ D3D11_VIDEO_PROCESSOR_CAPS ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,TYPE_5__*) ; 
 int /*<<< orphan*/  MP_CSP_BT_601 ; 
 int /*<<< orphan*/  MP_CSP_LEVELS_TV ; 
 int /*<<< orphan*/  FUNC10 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_filter*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (struct mp_filter*) ; 

__attribute__((used)) static int FUNC14(struct mp_filter *vf)
{
    struct priv *p = vf->priv;
    HRESULT hr;

    FUNC13(vf);

    D3D11_VIDEO_PROCESSOR_CONTENT_DESC vpdesc = {
        .InputFrameFormat = p->d3d_frame_format,
        .InputWidth = p->c_w,
        .InputHeight = p->c_h,
        .OutputWidth = p->params.w,
        .OutputHeight = p->params.h,
    };
    hr = FUNC7(p->video_dev, &vpdesc,
                                                          &p->vp_enum);
    if (FUNC0(hr))
        goto fail;

    D3D11_VIDEO_PROCESSOR_CAPS caps;
    hr = FUNC8(p->vp_enum, &caps);
    if (FUNC0(hr))
        goto fail;

    FUNC11(vf, "Found %d rate conversion caps. Looking for caps=0x%x.\n",
               (int)caps.RateConversionCapsCount, p->opts->mode);

    int rindex = -1;
    for (int n = 0; n < caps.RateConversionCapsCount; n++) {
        D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS rcaps;
        hr = FUNC9
                (p->vp_enum, n, &rcaps);
        if (FUNC0(hr))
            goto fail;
        FUNC11(vf, "  - %d: 0x%08x\n", n, (unsigned)rcaps.ProcessorCaps);
        if (rcaps.ProcessorCaps & p->opts->mode) {
            FUNC11(vf, "       (matching)\n");
            if (rindex < 0)
                rindex = n;
        }
    }

    if (rindex < 0) {
        FUNC12(vf, "No fitting video processor found, picking #0.\n");
        rindex = 0;
    }

    // TOOD: so, how do we select which rate conversion mode the processor uses?

    hr = FUNC6(p->video_dev, p->vp_enum, rindex,
                                                &p->video_proc);
    if (FUNC0(hr)) {
        FUNC10(vf, "Failed to create D3D11 video processor.\n");
        goto fail;
    }

    // Note: libavcodec does not support cropping left/top with hwaccel.
    RECT src_rc = {
        .right = p->params.w,
        .bottom = p->params.h,
    };
    FUNC5(p->video_ctx,
                                                         p->video_proc,
                                                         0, TRUE, &src_rc);

    // This is supposed to stop drivers from fucking up the video quality.
    FUNC2(p->video_ctx,
                                                                 p->video_proc,
                                                                 0, FALSE);

    FUNC4(p->video_ctx,
                                                         p->video_proc,
                                                         0,
                                                         D3D11_VIDEO_PROCESSOR_OUTPUT_RATE_NORMAL,
                                                         FALSE, 0);

    D3D11_VIDEO_PROCESSOR_COLOR_SPACE csp = {
        .YCbCr_Matrix = p->params.color.space != MP_CSP_BT_601,
        .Nominal_Range = p->params.color.levels == MP_CSP_LEVELS_TV ? 1 : 2,
    };
    FUNC3(p->video_ctx,
                                                         p->video_proc,
                                                         0, &csp);
    FUNC1(p->video_ctx,
                                                         p->video_proc,
                                                         &csp);

    return 0;
fail:
    FUNC13(vf);
    return -1;
}