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
struct ubus_object {int /*<<< orphan*/  n_methods; int /*<<< orphan*/  methods; TYPE_1__* type; int /*<<< orphan*/  name; } ;
struct hapd_interfaces {char* name; struct ubus_object ubus; } ;
struct TYPE_2__ {int /*<<< orphan*/  n_methods; int /*<<< orphan*/  methods; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 TYPE_1__ daemon_object_type ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ubus_object*) ; 

void FUNC7(struct hapd_interfaces *interfaces)
{
	struct ubus_object *obj = &interfaces->ubus;
	int name_len;
	int ret;

	if (!FUNC0())
		return;

	name_len = FUNC5("hostapd") + 1;
	if (interfaces->name)
		name_len += FUNC5(interfaces->name) + 1;
	obj->name = FUNC2(name_len);
	FUNC4(obj->name, "hostapd");
	if (interfaces->name) {
		FUNC3(obj->name, ".");
		FUNC3(obj->name, interfaces->name);
	}

	obj->type = &daemon_object_type;
	obj->methods = daemon_object_type.methods;
	obj->n_methods = daemon_object_type.n_methods;
	ret = FUNC6(ctx, obj);
	FUNC1();
}