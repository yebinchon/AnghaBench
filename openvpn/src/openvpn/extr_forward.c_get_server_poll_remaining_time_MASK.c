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
struct event_timeout {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct event_timeout*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(struct event_timeout *server_poll_timeout)
{
    FUNC2();
    int remaining = FUNC0(server_poll_timeout);
    return FUNC1(0, remaining);
}