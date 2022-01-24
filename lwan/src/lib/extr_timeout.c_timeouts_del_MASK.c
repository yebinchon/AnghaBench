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
struct timeouts {size_t* pending; int /*<<< orphan*/ ** wheel; int /*<<< orphan*/  expired; } ;
struct timeout {int /*<<< orphan*/ * pending; int /*<<< orphan*/  tqe; } ;
typedef  size_t ptrdiff_t ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t WHEEL_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct timeouts *T, struct timeout *to)
{
    if (to->pending) {
        FUNC1(to->pending, &to->tqe);

        if (to->pending != &T->expired && FUNC2(to->pending)) {
            ptrdiff_t index = to->pending - &T->wheel[0][0];
            ptrdiff_t wheel = index / WHEEL_LEN;
            ptrdiff_t slot = index % WHEEL_LEN;

            T->pending[wheel] &= ~(FUNC0(1) << slot);
        }

        to->pending = NULL;
    }
}