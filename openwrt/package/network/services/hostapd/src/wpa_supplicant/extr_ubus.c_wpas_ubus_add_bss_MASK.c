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
struct ubus_object {char* name; int /*<<< orphan*/  n_methods; int /*<<< orphan*/  methods; TYPE_2__* type; } ;
struct TYPE_3__ {struct ubus_object obj; } ;
struct wpa_supplicant {int /*<<< orphan*/  ifname; TYPE_1__ ubus; } ;
struct TYPE_4__ {int /*<<< orphan*/  n_methods; int /*<<< orphan*/  methods; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ bss_object_type ; 
 int /*<<< orphan*/  ctx ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ubus_object*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	struct ubus_object *obj = &wpa_s->ubus.obj;
	char *name;
	int ret;


	if (FUNC0(&name, "wpa_supplicant.%d", wpa_s->ifname) < 0)
		return;

	obj->name = name;
	obj->type = &bss_object_type;
	obj->methods = bss_object_type.methods;
	obj->n_methods = bss_object_type.n_methods;
	ret = FUNC1(ctx, obj);
	FUNC2();
}