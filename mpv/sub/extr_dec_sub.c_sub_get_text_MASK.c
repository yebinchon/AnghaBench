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
struct dec_sub {double last_vo_pts; int /*<<< orphan*/  lock; TYPE_2__* sd; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {char* (* get_text ) (TYPE_2__*,double) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (struct dec_sub*,double) ; 
 char* FUNC3 (TYPE_2__*,double) ; 
 int /*<<< orphan*/  FUNC4 (struct dec_sub*) ; 

char *FUNC5(struct dec_sub *sub, double pts)
{
    FUNC0(&sub->lock);
    char *text = NULL;

    pts = FUNC2(sub, pts);

    sub->last_vo_pts = pts;
    FUNC4(sub);

    if (sub->sd->driver->get_text)
        text = sub->sd->driver->get_text(sub->sd, pts);
    FUNC1(&sub->lock);
    return text;
}