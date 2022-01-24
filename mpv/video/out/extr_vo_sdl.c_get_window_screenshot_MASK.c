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
struct vo {int /*<<< orphan*/  dheight; int /*<<< orphan*/  dwidth; struct priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  sdl; int /*<<< orphan*/  mpv; } ;
struct priv {TYPE_1__ osd_format; int /*<<< orphan*/  renderer; } ;
struct mp_image {int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mp_image* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*) ; 

__attribute__((used)) static struct mp_image *FUNC4(struct vo *vo)
{
    struct priv *vc = vo->priv;
    struct mp_image *image = FUNC2(vc->osd_format.mpv, vo->dwidth,
                                                                vo->dheight);
    if (!image)
        return NULL;
    if (FUNC1(vc->renderer, NULL, vc->osd_format.sdl,
                             image->planes[0], image->stride[0])) {
        FUNC0(vo, "SDL_RenderReadPixels failed\n");
        FUNC3(image);
        return NULL;
    }
    return image;
}