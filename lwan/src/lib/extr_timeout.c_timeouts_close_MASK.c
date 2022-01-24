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
struct timeouts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeouts*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeouts*) ; 

void FUNC2(struct timeouts *T)
{
    /*
     * NOTE: Delete installed timeouts so timeout_pending() and
     * timeout_expired() worked as expected.
     */
    FUNC1(T);

    FUNC0(T);
}