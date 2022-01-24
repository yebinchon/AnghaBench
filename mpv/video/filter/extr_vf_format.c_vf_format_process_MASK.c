#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct priv {TYPE_3__* opts; TYPE_4__* conv; } ;
struct TYPE_5__ {int /*<<< orphan*/  levels; } ;
struct mp_image_params {int imgfmt; scalar_t__ hw_subfmt; TYPE_1__ color; } ;
struct mp_image {int imgfmt; struct mp_image_params params; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct priv* priv; } ;
struct TYPE_8__ {TYPE_2__* f; } ;
struct TYPE_7__ {int fmt; scalar_t__ convert; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 scalar_t__ MP_CSP_AUTO ; 
 int /*<<< orphan*/  MP_CSP_LEVELS_TV ; 
 scalar_t__ MP_CSP_RGB ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,struct mp_image_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image_params*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct mp_image_params*) ; 

__attribute__((used)) static void FUNC7(struct mp_filter *f)
{
    struct priv *priv = f->priv;

    if (FUNC3(priv->conv->f->pins[0], f->ppins[0])) {
        struct mp_frame frame = FUNC5(f->ppins[0]);

        if (priv->opts->convert && frame.type == MP_FRAME_VIDEO) {
            struct mp_image *img = frame.data;
            struct mp_image_params par = img->params;
            int outfmt = priv->opts->fmt;

            // If we convert from RGB to YUV, default to limited range.
            if (FUNC2(img->imgfmt) == MP_CSP_RGB &&
                outfmt && FUNC2(outfmt) == MP_CSP_AUTO)
            {
                par.color.levels = MP_CSP_LEVELS_TV;
            }

            FUNC6(priv->opts, &par);

            if (par.imgfmt != outfmt) {
                par.imgfmt = outfmt;
                par.hw_subfmt = 0;
            }
            FUNC1(&par);

            FUNC0(priv->conv, &par);
        }

        FUNC4(priv->conv->f->pins[0], frame);
    }

    if (FUNC3(f->ppins[1], priv->conv->f->pins[1])) {
        struct mp_frame frame = FUNC5(priv->conv->f->pins[1]);

        if (!priv->opts->convert && frame.type == MP_FRAME_VIDEO) {
            struct mp_image *img = frame.data;

            FUNC6(priv->opts, &img->params);
            FUNC1(&img->params);
        }

        FUNC4(f->ppins[1], frame);
    }
}