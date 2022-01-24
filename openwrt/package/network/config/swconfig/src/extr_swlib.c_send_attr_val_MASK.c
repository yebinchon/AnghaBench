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
struct TYPE_2__ {int /*<<< orphan*/  s; int /*<<< orphan*/  i; } ;
struct switch_val {TYPE_1__ value; struct switch_attr* attr; } ;
struct switch_attr {int type; } ;
struct nl_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWITCH_ATTR_OP_VALUE_INT ; 
 int /*<<< orphan*/  SWITCH_ATTR_OP_VALUE_STR ; 
#define  SWITCH_TYPE_INT 132 
#define  SWITCH_TYPE_LINK 131 
#define  SWITCH_TYPE_NOVAL 130 
#define  SWITCH_TYPE_PORTS 129 
#define  SWITCH_TYPE_STRING 128 
 scalar_t__ FUNC2 (struct nl_msg*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_msg*,struct switch_val*) ; 
 int /*<<< orphan*/  FUNC4 (struct nl_msg*,struct switch_val*) ; 

__attribute__((used)) static int
FUNC5(struct nl_msg *msg, void *arg)
{
	struct switch_val *val = arg;
	struct switch_attr *attr = val->attr;

	if (FUNC2(msg, arg))
		goto nla_put_failure;

	switch(attr->type) {
	case SWITCH_TYPE_NOVAL:
		break;
	case SWITCH_TYPE_INT:
		FUNC1(msg, SWITCH_ATTR_OP_VALUE_INT, val->value.i);
		break;
	case SWITCH_TYPE_STRING:
		if (!val->value.s)
			goto nla_put_failure;
		FUNC0(msg, SWITCH_ATTR_OP_VALUE_STR, val->value.s);
		break;
	case SWITCH_TYPE_PORTS:
		if (FUNC4(msg, val) < 0)
			goto nla_put_failure;
		break;
	case SWITCH_TYPE_LINK:
		if (FUNC3(msg, val))
			goto nla_put_failure;
		break;
	default:
		goto nla_put_failure;
	}
	return 0;

nla_put_failure:
	return -1;
}