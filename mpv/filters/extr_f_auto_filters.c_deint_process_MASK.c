#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mp_image {scalar_t__ imgfmt; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct deint_priv* priv; } ;
struct mp_autoconvert {struct mp_filter* f; } ;
struct filter_opts {scalar_t__ deinterlace; } ;
struct TYPE_6__ {struct mp_filter* filter; struct mp_frame frame; } ;
struct deint_priv {scalar_t__ prev_imgfmt; scalar_t__ prev_setting; TYPE_1__ sub; TYPE_5__* opts; } ;
struct TYPE_7__ {struct filter_opts* opts; } ;

/* Variables and functions */
 scalar_t__ IMGFMT_CUDA ; 
 scalar_t__ IMGFMT_D3D11 ; 
 scalar_t__ IMGFMT_VDPAU ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*,...) ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  MP_OUTPUT_CHAIN_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_autoconvert*) ; 
 struct mp_autoconvert* FUNC4 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_autoconvert*,struct mp_image*) ; 
 struct mp_filter* FUNC6 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_filter**,int) ; 
 void* FUNC8 (struct mp_filter*,int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_filter*) ; 
 scalar_t__ FUNC10 (struct mp_frame) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct mp_filter*) ; 

__attribute__((used)) static void FUNC17(struct mp_filter *f)
{
    struct deint_priv *p = f->priv;

    if (!FUNC15(&p->sub))
        return;

    struct mp_frame frame = p->sub.frame;

    if (FUNC10(frame)) {
        FUNC12(&p->sub);
        return;
    }

    if (frame.type != MP_FRAME_VIDEO) {
        FUNC0(f, "video input required!\n");
        FUNC9(f);
        return;
    }

    FUNC2(p->opts);
    struct filter_opts *opts = p->opts->opts;

    if (!opts->deinterlace)
        FUNC13(&p->sub);

    struct mp_image *img = frame.data;

    if (img->imgfmt == p->prev_imgfmt && p->prev_setting == opts->deinterlace) {
        FUNC12(&p->sub);
        return;
    }

    if (!FUNC14(&p->sub))
        return;

    FUNC1(!p->sub.filter);

    p->prev_imgfmt = img->imgfmt;
    p->prev_setting = opts->deinterlace;
    if (!p->prev_setting) {
        FUNC12(&p->sub);
        return;
    }

    if (img->imgfmt == IMGFMT_VDPAU) {
        char *args[] = {"deint", "yes", NULL};
        p->sub.filter =
            FUNC8(f, MP_OUTPUT_CHAIN_VIDEO, "vdpaupp", args);
    } else if (img->imgfmt == IMGFMT_D3D11) {
        p->sub.filter =
            FUNC8(f, MP_OUTPUT_CHAIN_VIDEO, "d3d11vpp", NULL);
    } else if (img->imgfmt == IMGFMT_CUDA) {
        char *args[] = {"mode", "send_field", NULL};
        p->sub.filter =
            FUNC8(f, MP_OUTPUT_CHAIN_VIDEO, "yadif_cuda", args);
    } else {
        struct mp_filter *subf = FUNC6(f);
        struct mp_filter *filters[2] = {0};

        struct mp_autoconvert *ac = FUNC4(subf);
        if (ac) {
            filters[0] = ac->f;
            // We know vf_yadif does not support hw inputs.
            FUNC3(ac);

            if (!FUNC5(ac, img)) {
                FUNC0(f, "no deinterlace filter available for format %s\n",
                       FUNC11(img->imgfmt));
                FUNC16(subf);
                FUNC12(&p->sub);
                return;
            }
        }

        char *args[] = {"mode", "send_field", NULL};
        filters[1] =
            FUNC8(subf, MP_OUTPUT_CHAIN_VIDEO, "yadif", args);

        FUNC7(subf->ppins[0], subf->ppins[1], filters, 2);
        p->sub.filter = subf;
    }

    if (!p->sub.filter)
        FUNC0(f, "creating deinterlacer failed\n");

    FUNC12(&p->sub);
}