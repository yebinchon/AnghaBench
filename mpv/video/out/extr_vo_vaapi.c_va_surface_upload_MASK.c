#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  image_id; } ;
struct va_surface {scalar_t__ is_derived; int /*<<< orphan*/  ctx; TYPE_1__ image; int /*<<< orphan*/  id; int /*<<< orphan*/  display; } ;
struct priv {int dummy; } ;
struct mp_image {scalar_t__ w; scalar_t__ h; int /*<<< orphan*/  imgfmt; } ;
typedef  int /*<<< orphan*/  VAStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct priv*,struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct va_surface*) ; 
 struct va_surface* FUNC9 (struct mp_image*) ; 

__attribute__((used)) static int FUNC10(struct priv *priv, struct mp_image *va_dst,
                             struct mp_image *sw_src)
{
    struct va_surface *p = FUNC9(va_dst);
    if (!p)
        return -1;

    if (FUNC7(priv, va_dst, sw_src->imgfmt) < 0)
        return -1;

    struct mp_image img;
    if (!FUNC5(p->ctx, &p->image, &img))
        return -1;
    FUNC1(sw_src->w <= img.w && sw_src->h <= img.h);
    FUNC3(&img, sw_src->w, sw_src->h); // copy only visible part
    FUNC2(&img, sw_src);
    FUNC6(p->ctx, &p->image);

    if (!p->is_derived) {
        VAStatus status = FUNC4(p->display, p->id,
                                     p->image.image_id,
                                     0, 0, sw_src->w, sw_src->h,
                                     0, 0, sw_src->w, sw_src->h);
        if (!FUNC0(p->ctx, "vaPutImage()"))
            return -1;
    }

    if (p->is_derived)
        FUNC8(p);
    return 0;
}