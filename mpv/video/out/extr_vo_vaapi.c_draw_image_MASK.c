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
struct vo {struct priv* priv; } ;
struct priv {size_t output_surface; struct mp_image** output_surfaces; struct mp_image** swdec_surfaces; } ;
struct mp_image {scalar_t__ imgfmt; } ;

/* Variables and functions */
 scalar_t__ IMGFMT_VAAPI ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,struct mp_image*) ; 
 struct mp_image* FUNC3 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*) ; 
 scalar_t__ FUNC5 (struct priv*,struct mp_image*,struct mp_image*) ; 

__attribute__((used)) static void FUNC6(struct vo *vo, struct mp_image *mpi)
{
    struct priv *p = vo->priv;

    if (mpi->imgfmt != IMGFMT_VAAPI) {
        struct mp_image *dst = p->swdec_surfaces[p->output_surface];
        if (!dst || FUNC5(p, dst, mpi) < 0) {
            FUNC0(vo, "Could not upload surface.\n");
            FUNC4(mpi);
            return;
        }
        FUNC2(dst, mpi);
        FUNC4(mpi);
        mpi = FUNC3(dst);
    }

    FUNC4(p->output_surfaces[p->output_surface]);
    p->output_surfaces[p->output_surface] = mpi;

    FUNC1(vo);
}