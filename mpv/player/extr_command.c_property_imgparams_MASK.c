#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_imgfmt_desc {int num_planes; int* bpp; int* xs; int* ys; int plane_bits; int flags; } ;
struct TYPE_2__ {double sig_peak; int /*<<< orphan*/  light; int /*<<< orphan*/  gamma; int /*<<< orphan*/  primaries; int /*<<< orphan*/  levels; int /*<<< orphan*/  space; } ;
struct mp_image_params {int w; int h; double p_w; int rotate; int /*<<< orphan*/  stereo3d; int /*<<< orphan*/  chroma_location; TYPE_1__ color; scalar_t__ p_h; int /*<<< orphan*/  imgfmt; } ;
struct m_sub_property {char* member_0; int unavailable; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int MP_IMGFLAG_YUV_P ; 
 int M_PROPERTY_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct m_sub_property*,int,void*) ; 
 int /*<<< orphan*/  mp_chroma_names ; 
 int /*<<< orphan*/  mp_csp_levels_names ; 
 int /*<<< orphan*/  mp_csp_light_names ; 
 int /*<<< orphan*/  mp_csp_names ; 
 int /*<<< orphan*/  mp_csp_prim_names ; 
 int /*<<< orphan*/  mp_csp_trc_names ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image_params*,int*,int*) ; 
 struct mp_imgfmt_desc FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_stereo3d_names ; 

__attribute__((used)) static int FUNC8(struct mp_image_params p, int action, void *arg)
{
    if (!p.imgfmt)
        return M_PROPERTY_UNAVAILABLE;

    int d_w, d_h;
    FUNC5(&p, &d_w, &d_h);

    struct mp_imgfmt_desc desc = FUNC6(p.imgfmt);
    int bpp = 0;
    for (int i = 0; i < desc.num_planes; i++)
        bpp += desc.bpp[i] >> (desc.xs[i] + desc.ys[i]);

    struct m_sub_property props[] = {
        {"pixelformat",     FUNC2(FUNC7(p.imgfmt))},
        {"average-bpp",     FUNC1(bpp),
                            .unavailable = !bpp},
        {"plane-depth",     FUNC1(desc.plane_bits),
                            .unavailable = !(desc.flags & MP_IMGFLAG_YUV_P)},
        {"w",               FUNC1(p.w)},
        {"h",               FUNC1(p.h)},
        {"dw",              FUNC1(d_w)},
        {"dh",              FUNC1(d_h)},
        {"aspect",          FUNC0(d_w / (double)d_h)},
        {"par",             FUNC0(p.p_w / (double)p.p_h)},
        {"colormatrix",
            FUNC2(FUNC3(mp_csp_names, p.color.space))},
        {"colorlevels",
            FUNC2(FUNC3(mp_csp_levels_names, p.color.levels))},
        {"primaries",
            FUNC2(FUNC3(mp_csp_prim_names, p.color.primaries))},
        {"gamma",
            FUNC2(FUNC3(mp_csp_trc_names, p.color.gamma))},
        {"sig-peak", FUNC0(p.color.sig_peak)},
        {"light",
            FUNC2(FUNC3(mp_csp_light_names, p.color.light))},
        {"chroma-location",
            FUNC2(FUNC3(mp_chroma_names, p.chroma_location))},
        {"stereo-in",
            FUNC2(FUNC3(mp_stereo3d_names, p.stereo3d))},
        {"rotate",          FUNC1(p.rotate)},
        {0}
    };

    return FUNC4(props, action, arg);
}