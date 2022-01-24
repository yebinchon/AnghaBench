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
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(THREAD_EVENT_HANDLER **handsin)
{
    GLOBAL_TEVENT_REGISTER *gtr;
    int i;

    gtr = FUNC2();
    if (gtr == NULL)
        return;
    FUNC1(gtr->lock);
    for (i = 0; i < FUNC4(gtr->skhands); i++) {
        THREAD_EVENT_HANDLER **hands
            = FUNC5(gtr->skhands, i);

        if (hands == handsin) {
            hands = FUNC3(gtr->skhands, i);
            FUNC0(gtr->lock);
            return;
        }
    }
    FUNC0(gtr->lock);
    return;
}