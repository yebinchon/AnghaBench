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
struct vo_internal {int need_wakeup; int /*<<< orphan*/  lock; } ;
struct vo {TYPE_1__* driver; struct vo_internal* in; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* wait_events ) (struct vo*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vo *vo, int64_t until_time)
{
    struct vo_internal *in = vo->in;

    if (vo->driver->wait_events) {
        vo->driver->wait_events(vo, until_time);
    } else {
        FUNC3(vo, until_time);
    }
    FUNC0(&in->lock);
    in->need_wakeup = false;
    FUNC1(&in->lock);
}