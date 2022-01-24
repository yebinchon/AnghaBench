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
struct TYPE_2__ {scalar_t__ sig_peak; int /*<<< orphan*/  light; int /*<<< orphan*/  levels; int /*<<< orphan*/  gamma; int /*<<< orphan*/  primaries; int /*<<< orphan*/  space; } ;
struct mp_image_params {int w; int h; scalar_t__ p_w; scalar_t__ p_h; scalar_t__ stereo3d; scalar_t__ rotate; int /*<<< orphan*/  chroma_location; TYPE_1__ color; scalar_t__ hw_subfmt; scalar_t__ imgfmt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_chroma_names ; 
 int /*<<< orphan*/  mp_csp_levels_names ; 
 int /*<<< orphan*/  mp_csp_light_names ; 
 int /*<<< orphan*/  mp_csp_names ; 
 int /*<<< orphan*/  mp_csp_prim_names ; 
 int /*<<< orphan*/  mp_csp_trc_names ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,...) ; 

char *FUNC5(char *b, size_t bs,
                                 const struct mp_image_params *p)
{
    if (p && p->imgfmt) {
        FUNC4(b, bs, "%dx%d", p->w, p->h);
        if (p->p_w != p->p_h || !p->p_w)
            FUNC3(b, bs, " [%d:%d]", p->p_w, p->p_h);
        FUNC3(b, bs, " %s", FUNC2(p->imgfmt));
        if (p->hw_subfmt)
            FUNC3(b, bs, "[%s]", FUNC2(p->hw_subfmt));
        FUNC3(b, bs, " %s/%s/%s/%s/%s",
                        FUNC1(mp_csp_names, p->color.space),
                        FUNC1(mp_csp_prim_names, p->color.primaries),
                        FUNC1(mp_csp_trc_names, p->color.gamma),
                        FUNC1(mp_csp_levels_names, p->color.levels),
                        FUNC1(mp_csp_light_names, p->color.light));
        if (p->color.sig_peak)
            FUNC3(b, bs, " SP=%f", p->color.sig_peak);
        FUNC3(b, bs, " CL=%s",
                        FUNC1(mp_chroma_names, p->chroma_location));
        if (p->rotate)
            FUNC3(b, bs, " rot=%d", p->rotate);
        if (p->stereo3d > 0) {
            FUNC3(b, bs, " stereo=%s",
                            FUNC0(p->stereo3d, "?"));
        }
    } else {
        FUNC4(b, bs, "???");
    }
    return b;
}