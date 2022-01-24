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
struct TYPE_2__ {int /*<<< orphan*/  explicit_exit_notification_time_wait; int /*<<< orphan*/  explicit_exit_notification_interval; } ;
struct context {TYPE_1__ c2; int /*<<< orphan*/  sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC3 (struct context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct context *c)
{
    FUNC2(M_INFO, "SIGTERM received, sending exit notification to peer");
    FUNC0(&c->c2.explicit_exit_notification_interval, 1, 0);
    FUNC3(c);
    FUNC4(c->sig);
    FUNC1();
    c->c2.explicit_exit_notification_time_wait = now;
}