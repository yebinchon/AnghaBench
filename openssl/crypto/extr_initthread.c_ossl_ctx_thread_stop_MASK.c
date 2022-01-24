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
struct TYPE_2__ {int sane; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  THREAD_EVENT_HANDLER ;

/* Variables and functions */
 TYPE_1__ destructor_key ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ **) ; 

void FUNC2(void *arg)
{
    if (destructor_key.sane != -1) {
        THREAD_EVENT_HANDLER **hands
            = FUNC0(&destructor_key.value, 0, 1);
        FUNC1(arg, hands);
    }
}