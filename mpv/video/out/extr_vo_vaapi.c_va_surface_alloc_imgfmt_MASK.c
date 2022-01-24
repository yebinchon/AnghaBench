#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_4__ {scalar_t__ image_id; TYPE_1__ format; } ;
struct va_surface {TYPE_2__ image; } ;
struct priv {int dummy; } ;
struct mp_image {int dummy; } ;
typedef  int /*<<< orphan*/  VAImageFormat ;

/* Variables and functions */
 scalar_t__ VA_INVALID_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct priv*,int) ; 
 scalar_t__ FUNC2 (struct va_surface*,int /*<<< orphan*/ *) ; 
 struct va_surface* FUNC3 (struct mp_image*) ; 

__attribute__((used)) static int FUNC4(struct priv *priv, struct mp_image *img,
                                   int imgfmt)
{
    struct va_surface *p = FUNC3(img);
    if (!p)
        return -1;
    // Multiple FourCCs can refer to the same imgfmt, so check by doing the
    // surjective conversion first.
    if (p->image.image_id != VA_INVALID_ID &&
        FUNC0(p->image.format.fourcc) == imgfmt)
        return 0;
    VAImageFormat *format = FUNC1(priv, imgfmt);
    if (!format)
        return -1;
    if (FUNC2(p, format) < 0)
        return -1;
    return 0;
}