#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int h; int /*<<< orphan*/  w; } ;
struct mp_zimg_repack {int* zmask; TYPE_3__* tmp; TYPE_1__ fmt; int /*<<< orphan*/  zimgfmt; scalar_t__ pack; } ;
struct mp_zimg_context {int /*<<< orphan*/  zimg_graph; } ;
struct TYPE_6__ {int num_planes; int* ys; } ;
struct TYPE_7__ {TYPE_2__ fmt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ZIMG_BUFFER_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_zimg_repack*,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC6 (unsigned int) ; 

__attribute__((used)) static bool FUNC7(struct mp_zimg_context *ctx,
                            struct mp_zimg_repack *r)
{
    unsigned lines = 0;
    int err;
    if (r->pack) {
        err = FUNC5(ctx->zimg_graph, &lines);
    } else {
        err = FUNC4(ctx->zimg_graph, &lines);
    }

    if (err)
        return false;

    r->zmask[0] = FUNC6(lines);

    // Either ZIMG_BUFFER_MAX, or a power-of-2 slice buffer.
    FUNC1(r->zmask[0] == ZIMG_BUFFER_MAX || FUNC0(r->zmask[0] + 1));

    int h = r->zmask[0] == ZIMG_BUFFER_MAX ? r->fmt.h : r->zmask[0] + 1;
    if (h >= r->fmt.h) {
        h = r->fmt.h;
        r->zmask[0] = ZIMG_BUFFER_MAX;
    }

    r->tmp = FUNC2(r->zimgfmt, r->fmt.w, h);
    FUNC3(r, r->tmp);

    if (r->tmp) {
        for (int n = 1; n < r->tmp->fmt.num_planes; n++) {
            r->zmask[n] = r->zmask[0];
            if (r->zmask[0] != ZIMG_BUFFER_MAX)
                r->zmask[n] = r->zmask[n] >> r->tmp->fmt.ys[n];
        }
    }

    return !!r->tmp;
}