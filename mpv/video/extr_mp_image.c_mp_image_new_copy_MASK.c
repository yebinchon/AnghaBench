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
struct mp_image {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  imgfmt; } ;

/* Variables and functions */
 struct mp_image* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,struct mp_image*) ; 

struct mp_image *FUNC3(struct mp_image *img)
{
    struct mp_image *new = FUNC0(img->imgfmt, img->w, img->h);
    if (!new)
        return NULL;
    FUNC1(new, img);
    FUNC2(new, img);
    return new;
}