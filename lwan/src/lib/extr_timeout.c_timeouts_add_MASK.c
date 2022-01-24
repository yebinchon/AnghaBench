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
struct timeouts {scalar_t__ curtime; } ;
struct timeout {int flags; } ;

/* Variables and functions */
 int TIMEOUT_ABS ; 
 int /*<<< orphan*/  FUNC0 (struct timeouts*,struct timeout*,scalar_t__) ; 

void FUNC1(struct timeouts *T, struct timeout *to, timeout_t timeout)
{
    if (to->flags & TIMEOUT_ABS)
        FUNC0(T, to, timeout);
    else
        FUNC0(T, to, T->curtime + timeout);
}