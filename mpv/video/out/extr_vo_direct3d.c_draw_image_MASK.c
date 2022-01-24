#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_3__* priv; } ;
struct mp_image {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  pts; } ;
typedef  TYPE_2__ mp_image_t ;
struct TYPE_13__ {int plane_count; int have_image; int /*<<< orphan*/  osd_pts; TYPE_1__* planes; scalar_t__ use_textures; int /*<<< orphan*/  d3d_device; } ;
typedef  TYPE_3__ d3d_priv ;
struct TYPE_11__ {int /*<<< orphan*/  texture; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct vo *vo, mp_image_t *mpi)
{
    d3d_priv *priv = vo->priv;
    if (!priv->d3d_device)
        goto done;

    struct mp_image buffer;
    if (!FUNC3(priv, &buffer))
        goto done;

    FUNC4(&buffer, mpi);

    FUNC1(priv);

    if (priv->use_textures) {
        for (int n = 0; n < priv->plane_count; n++) {
            FUNC2(priv, &priv->planes[n].texture);
        }
    }

    priv->have_image = true;
    priv->osd_pts = mpi->pts;

    FUNC0(priv);

done:
    FUNC5(mpi);
}