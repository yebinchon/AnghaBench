#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vo {struct priv* priv; } ;
struct priv {int image_width; int /*<<< orphan*/  dither_buffer; int /*<<< orphan*/  dither; int /*<<< orphan*/  screen_h; int /*<<< orphan*/  screen_w; int /*<<< orphan*/  canvas; int /*<<< orphan*/  image_height; } ;
struct TYPE_4__ {int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; } ;
typedef  TYPE_1__ mp_image_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int depth ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct vo *vo, mp_image_t *mpi)
{
    struct priv *priv = vo->priv;
    FUNC1(priv->dither_buffer, mpi->planes[0], priv->image_width * depth, priv->image_height,
               priv->image_width * depth, mpi->stride[0]);
    FUNC0(priv->canvas, 0, 0, priv->screen_w, priv->screen_h, priv->dither, priv->dither_buffer);
    FUNC2(mpi);
}