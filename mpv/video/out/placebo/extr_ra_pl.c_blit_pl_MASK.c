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
struct TYPE_2__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct ra_tex {int /*<<< orphan*/  priv; TYPE_1__ params; } ;
struct ra {int dummy; } ;
struct pl_rect3d {void* y1; void* x1; void* y0; void* x0; int /*<<< orphan*/  member_0; } ;
struct mp_rect {int /*<<< orphan*/  y1; int /*<<< orphan*/  x1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ra*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pl_rect3d,struct pl_rect3d) ; 

__attribute__((used)) static void FUNC4(struct ra *ra, struct ra_tex *dst, struct ra_tex *src,
                    struct mp_rect *dst_rc, struct mp_rect *src_rc)
{
    struct pl_rect3d plsrc = {0}, pldst = {0};
    if (src_rc) {
        plsrc.x0 = FUNC1(FUNC0(src_rc->x0, 0), src->params.w);
        plsrc.y0 = FUNC1(FUNC0(src_rc->y0, 0), src->params.h);
        plsrc.x1 = FUNC1(FUNC0(src_rc->x1, 0), src->params.w);
        plsrc.y1 = FUNC1(FUNC0(src_rc->y1, 0), src->params.h);
    }

    if (dst_rc) {
        pldst.x0 = FUNC1(FUNC0(dst_rc->x0, 0), dst->params.w);
        pldst.y0 = FUNC1(FUNC0(dst_rc->y0, 0), dst->params.h);
        pldst.x1 = FUNC1(FUNC0(dst_rc->x1, 0), dst->params.w);
        pldst.y1 = FUNC1(FUNC0(dst_rc->y1, 0), dst->params.h);
    }

    FUNC3(FUNC2(ra), dst->priv, src->priv, pldst, plsrc);
}