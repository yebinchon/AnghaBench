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
struct switch_val {int dummy; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {scalar_t__ type; char* name; struct switch_attr* next; } ;

/* Variables and functions */
 scalar_t__ SWITCH_TYPE_NOVAL ; 
 int /*<<< orphan*/  FUNC0 (struct switch_attr*,struct switch_val*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (struct switch_dev*,struct switch_attr*,struct switch_val*) ; 

__attribute__((used)) static void
FUNC4(struct switch_dev *dev, struct switch_attr *attr, struct switch_val *val)
{
	while (attr) {
		if (attr->type != SWITCH_TYPE_NOVAL) {
			FUNC1("\t%s: ", attr->name);
			if (FUNC3(dev, attr, val) < 0)
				FUNC1("???");
			else
				FUNC0(attr, val);
			FUNC2('\n');
		}
		attr = attr->next;
	}
}