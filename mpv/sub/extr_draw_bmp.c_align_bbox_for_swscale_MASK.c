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
struct mp_rect {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct mp_image {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,struct mp_rect*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,int*,int*) ; 
 int FUNC2 (struct mp_rect*,struct mp_rect*) ; 

__attribute__((used)) static bool FUNC3(struct mp_image *img, struct mp_rect *rc)
{
    struct mp_rect img_rect = {0, 0, img->w, img->h};
    // Get rid of negative coordinates
    if (!FUNC2(rc, &img_rect))
        return false;
    int xstep, ystep;
    FUNC1(img, &xstep, &ystep);
    FUNC0(xstep, ystep, rc);
    return FUNC2(rc, &img_rect);
}