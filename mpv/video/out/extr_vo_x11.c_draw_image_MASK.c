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
struct vo {int /*<<< orphan*/  osd; struct priv* priv; } ;
struct mp_rect {void* y0; void* x0; } ;
struct priv {struct mp_image* original_image; int /*<<< orphan*/  osd; int /*<<< orphan*/  sws; struct mp_rect src; int /*<<< orphan*/  current_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  align_y; int /*<<< orphan*/  align_x; } ;
struct mp_image {int /*<<< orphan*/  pts; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_1__ fmt; } ;
typedef  struct mp_image mp_image_t ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 struct mp_image FUNC1 (struct priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,struct mp_rect) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC7 (struct vo*,int) ; 

__attribute__((used)) static void FUNC8(struct vo *vo, mp_image_t *mpi)
{
    struct priv *p = vo->priv;

    FUNC7(vo, 1);

    struct mp_image img = FUNC1(p, p->current_buf);

    if (mpi) {
        struct mp_image src = *mpi;
        struct mp_rect src_rc = p->src;
        src_rc.x0 = FUNC0(src_rc.x0, src.fmt.align_x);
        src_rc.y0 = FUNC0(src_rc.y0, src.fmt.align_y);
        FUNC3(&src, src_rc);

        FUNC4(p->sws, &img, &src);
    } else {
        FUNC2(&img, 0, 0, img.w, img.h);
    }

    FUNC5(vo->osd, p->osd, mpi ? mpi->pts : 0, 0, &img);

    if (mpi != p->original_image) {
        FUNC6(p->original_image);
        p->original_image = mpi;
    }
}