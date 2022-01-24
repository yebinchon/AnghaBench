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
struct wpa_supplicant {int /*<<< orphan*/  ifname; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct blob_attr {int dummy; } ;

/* Variables and functions */
 int UBUS_STATUS_INVALID_ARGUMENT ; 
 int UBUS_STATUS_OK ; 
 size_t WPAS_CONFIG_REM_IFACE ; 
 int __WPAS_CONFIG_REM_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct blob_attr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpa_global* FUNC4 (struct ubus_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct wpa_global*,struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpas_config_remove_policy ; 

__attribute__((used)) static int
FUNC7(struct ubus_context *ctx, struct ubus_object *obj,
		   struct ubus_request_data *req, const char *method,
		   struct blob_attr *msg)
{
	struct blob_attr *tb[__WPAS_CONFIG_REM_MAX];
	struct wpa_global *global = FUNC4(obj);
	struct wpa_supplicant *wpa_s = NULL;
	unsigned int found = 0;

	FUNC3(wpas_config_remove_policy, __WPAS_CONFIG_REM_MAX, tb, FUNC0(msg), FUNC1(msg));

	if (!tb[WPAS_CONFIG_REM_IFACE])
		return UBUS_STATUS_INVALID_ARGUMENT;

	/* find wpa_s object for to-be-removed interface */
	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		if (!FUNC5(wpa_s->ifname,
			     FUNC2(tb[WPAS_CONFIG_REM_IFACE]),
			     sizeof(wpa_s->ifname)))
		{
			found = 1;
			break;
		}
	}

	if (!found)
		return UBUS_STATUS_INVALID_ARGUMENT;

	if (FUNC6(global, wpa_s, 0))
		return UBUS_STATUS_INVALID_ARGUMENT;

	return UBUS_STATUS_OK;
}