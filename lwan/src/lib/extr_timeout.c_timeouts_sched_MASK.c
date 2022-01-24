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
typedef  scalar_t__ timeout_t ;
struct timeouts {scalar_t__ curtime; int* pending; int /*<<< orphan*/  expired; int /*<<< orphan*/ ** wheel; } ;
struct timeout {int /*<<< orphan*/  tqe; int /*<<< orphan*/ * pending; scalar_t__ expires; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct timeouts*,struct timeout*) ; 
 int FUNC3 (int,scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct timeouts*,struct timeout*) ; 

__attribute__((used)) static void
FUNC6(struct timeouts *T, struct timeout *to, timeout_t expires)
{
    timeout_t rem;
    int wheel, slot;

    FUNC5(T, to);

    to->expires = expires;

    if (expires > T->curtime) {
        rem = FUNC2(T, to);

        /* rem is nonzero since:
         *   rem == timeout_rem(T,to),
         *       == to->expires - T->curtime
         *   and above we have expires > T->curtime.
         */
        wheel = FUNC4(rem);
        slot = FUNC3(wheel, to->expires);

        to->pending = &T->wheel[wheel][slot];

        T->pending[wheel] |= FUNC0(1) << slot;
    } else {
        to->pending = &T->expired;
    }

    FUNC1(to->pending, &to->tqe);
}