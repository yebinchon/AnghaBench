#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct vo {struct priv* priv; } ;
struct TYPE_13__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_12__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct priv {int /*<<< orphan*/  tex; int /*<<< orphan*/  renderer; TYPE_2__ dst_rect; TYPE_1__ src_rect; int /*<<< orphan*/  osd_pts; } ;
struct TYPE_14__ {int /*<<< orphan*/  pts; } ;
typedef  TYPE_3__ mp_image_t ;
struct TYPE_15__ {scalar_t__ h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_4__ SDL_Rect ;

/* Variables and functions */
 int /*<<< orphan*/  SDL_BLENDMODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vo*) ; 
 int /*<<< orphan*/  FUNC6 (struct vo*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC9(struct vo *vo, mp_image_t *mpi)
{
    struct priv *vc = vo->priv;

    // typically this runs in parallel with the following mp_image_copy call
    FUNC2(vc->renderer, 0, 0, 0, 255);
    FUNC0(vc->renderer);

    FUNC3(vc->tex, SDL_BLENDMODE_NONE);

    if (mpi) {
        vc->osd_pts = mpi->pts;

        mp_image_t texmpi;
        if (!FUNC6(vo, &texmpi)) {
            FUNC8(mpi);
            return;
        }

        FUNC7(&texmpi, mpi);

        FUNC4(vc->tex);

        FUNC8(mpi);
    }

    SDL_Rect src, dst;
    src.x = vc->src_rect.x0;
    src.y = vc->src_rect.y0;
    src.w = vc->src_rect.x1 - vc->src_rect.x0;
    src.h = vc->src_rect.y1 - vc->src_rect.y0;
    dst.x = vc->dst_rect.x0;
    dst.y = vc->dst_rect.y0;
    dst.w = vc->dst_rect.x1 - vc->dst_rect.x0;
    dst.h = vc->dst_rect.y1 - vc->dst_rect.y0;

    FUNC1(vc->renderer, vc->tex, &src, &dst);

    FUNC5(vo);
}