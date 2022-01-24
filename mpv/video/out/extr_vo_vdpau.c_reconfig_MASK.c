#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct vo {struct vdpctx* priv; } ;
struct vdpctx {scalar_t__ vid_width; scalar_t__ vid_height; int /*<<< orphan*/  rgb_mode; int /*<<< orphan*/  image_format; int /*<<< orphan*/  vdp_device; struct vdp_functions* vdp; } ;
struct vdp_functions {int /*<<< orphan*/  (* video_surface_query_capabilities ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ;} ;
struct mp_image_params {scalar_t__ w; scalar_t__ h; int /*<<< orphan*/  imgfmt; } ;
typedef  int /*<<< orphan*/  VdpStatus ;
typedef  int /*<<< orphan*/  VdpChromaType ;
typedef  scalar_t__ VdpBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*) ; 
 int /*<<< orphan*/  VDP_CHROMA_TYPE_420 ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 
 scalar_t__ FUNC4 (struct vo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct vo*) ; 

__attribute__((used)) static int FUNC9(struct vo *vo, struct mp_image_params *params)
{
    struct vdpctx *vc = vo->priv;
    struct vdp_functions *vdp = vc->vdp;
    VdpStatus vdp_st;

    if (!FUNC2(vo))
        return -1;

    VdpChromaType chroma_type = VDP_CHROMA_TYPE_420;
    FUNC5(params->imgfmt, &chroma_type, NULL);

    VdpBool ok;
    uint32_t max_w, max_h;
    vdp_st = vdp->video_surface_query_capabilities(vc->vdp_device, chroma_type,
                                                   &ok, &max_w, &max_h);
    FUNC0(vo, "Error when calling vdp_video_surface_query_capabilities");

    if (!ok)
        return -1;
    if (params->w > max_w || params->h > max_h) {
        if (ok)
            FUNC1(vo, "Video too large for vdpau.\n");
        return -1;
    }

    vc->image_format = params->imgfmt;
    vc->vid_width    = params->w;
    vc->vid_height   = params->h;

    vc->rgb_mode = FUNC6(params->imgfmt, NULL);

    FUNC3(vo);

    FUNC8(vo);

    if (FUNC4(vo) < 0)
        return -1;

    return 0;
}