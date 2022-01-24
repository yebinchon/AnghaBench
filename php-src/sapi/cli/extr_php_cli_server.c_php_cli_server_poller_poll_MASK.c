#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wfds; int /*<<< orphan*/  rfds; } ;
struct TYPE_5__ {TYPE_1__ active; scalar_t__ max_fd; int /*<<< orphan*/  wfds; int /*<<< orphan*/  rfds; } ;
typedef  TYPE_2__ php_cli_server_poller ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int FUNC2(php_cli_server_poller *poller, struct timeval *tv) /* {{{ */
{
	FUNC0(&poller->active.rfds, &poller->rfds, sizeof(poller->rfds));
	FUNC0(&poller->active.wfds, &poller->wfds, sizeof(poller->wfds));
	return FUNC1(poller->max_fd + 1, &poller->active.rfds, &poller->active.wfds, NULL, tv);
}