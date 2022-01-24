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
struct mp_image_params {int /*<<< orphan*/  imgfmt; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct priv {struct mp_image_params image_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMGFMT_VAAPI ; 
 int /*<<< orphan*/  FUNC0 (struct priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 

__attribute__((used)) static int FUNC4(struct vo *vo, struct mp_image_params *params)
{
    struct priv *p = vo->priv;

    FUNC1(p);

    FUNC3(vo);

    if (params->imgfmt != IMGFMT_VAAPI) {
        if (!FUNC0(p, params->w, params->h, params->imgfmt))
            return -1;
    }

    p->image_params = *params;
    FUNC2(p);
    return 0;
}