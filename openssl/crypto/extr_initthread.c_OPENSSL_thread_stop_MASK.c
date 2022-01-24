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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_1__ destructor_key ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

void FUNC4(void)
{
    if (destructor_key.sane != -1) {
        THREAD_EVENT_HANDLER **hands
            = FUNC1(&destructor_key.value, 0, 0);
        FUNC3(NULL, hands);

        FUNC2(hands);
        FUNC0(hands);
    }
}