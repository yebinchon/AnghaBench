#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vo {TYPE_1__* priv; } ;
struct mp_image_params {scalar_t__ imgfmt; scalar_t__ w; scalar_t__ h; } ;
struct TYPE_5__ {int have_image; scalar_t__ image_format; scalar_t__ src_width; scalar_t__ src_height; struct mp_image_params params; } ;
typedef  TYPE_1__ d3d_priv ;

/* Variables and functions */
 int VO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 

__attribute__((used)) static int FUNC4(struct vo *vo, struct mp_image_params *params)
{
    d3d_priv *priv = vo->priv;

    priv->have_image = false;

    FUNC3(vo);

    if ((priv->image_format != params->imgfmt)
        || (priv->src_width != params->w)
        || (priv->src_height != params->h))
    {
        FUNC0(priv);

        priv->src_width = params->w;
        priv->src_height = params->h;
        priv->params = *params;
        FUNC1(priv, params->imgfmt, true);
    }

    if (!FUNC2(priv))
        return VO_ERROR;

    return 0; /* Success */
}