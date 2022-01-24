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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  skhands; } ;
typedef  int /*<<< orphan*/  THREAD_EVENT_HANDLER ;
typedef  TYPE_1__ GLOBAL_TEVENT_REGISTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC4(THREAD_EVENT_HANDLER **hands)
{
    int ret;
    GLOBAL_TEVENT_REGISTER *gtr;

    gtr = FUNC2();
    if (gtr == NULL)
        return 0;

    FUNC1(gtr->lock);
    ret = (FUNC3(gtr->skhands, hands) != 0);
    FUNC0(gtr->lock);

    return ret;
}