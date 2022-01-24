#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; } ;
struct ubus_object {int /*<<< orphan*/  n_methods; int /*<<< orphan*/  methods; TYPE_2__* type; int /*<<< orphan*/  name; } ;
struct wpa_global {TYPE_1__ params; struct ubus_object ubus_global; } ;
struct TYPE_4__ {int /*<<< orphan*/  n_methods; int /*<<< orphan*/  methods; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ubus_object*) ; 
 TYPE_2__ wpas_daemon_object_type ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct wpa_global *global)
{
	struct ubus_object *obj = &global->ubus_global;
	int name_len;
	int ret;

	if (!FUNC5())
		return;

	name_len = FUNC3("wpa_supplicant") + 1;
	if (global->params.name)
		name_len += FUNC3(global->params.name) + 1;
	obj->name = FUNC0(name_len);
	FUNC2(obj->name, "wpa_supplicant");

	if (global->params.name)
	{
		FUNC1(obj->name, ".");
		FUNC1(obj->name, global->params.name);
	}

	obj->type = &wpas_daemon_object_type;
	obj->methods = wpas_daemon_object_type.methods;
	obj->n_methods = wpas_daemon_object_type.n_methods;
	ret = FUNC4(ctx, obj);
	FUNC6();
}