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
struct switch_port {int flags; int /*<<< orphan*/  id; } ;
struct swconfig_callback {struct nlattr** nest; int /*<<< orphan*/  msg; int /*<<< orphan*/  cmd; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCH_ATTR_PORT ; 
 int SWITCH_PORT_FLAG_TAGGED ; 
 int /*<<< orphan*/  SWITCH_PORT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nlattr*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct swconfig_callback *cb, void *arg)
{
	const struct switch_port *port = arg;
	struct nlattr *p = NULL;

	if (!cb->nest[0]) {
		cb->nest[0] = FUNC2(cb->msg, cb->cmd);
		if (!cb->nest[0])
			return -1;
	}

	p = FUNC2(cb->msg, SWITCH_ATTR_PORT);
	if (!p)
		goto error;

	if (FUNC4(cb->msg, SWITCH_PORT_ID, port->id))
		goto nla_put_failure;
	if (port->flags & (1 << SWITCH_PORT_FLAG_TAGGED)) {
		if (FUNC3(cb->msg, SWITCH_PORT_FLAG_TAGGED))
			goto nla_put_failure;
	}

	FUNC1(cb->msg, p);
	return 0;

nla_put_failure:
		FUNC0(cb->msg, p);
error:
	FUNC0(cb->msg, cb->nest[0]);
	return -1;
}