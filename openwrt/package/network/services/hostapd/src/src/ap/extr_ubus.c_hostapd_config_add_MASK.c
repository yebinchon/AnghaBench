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
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct hapd_interfaces {int dummy; } ;
struct blob_attr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t CONFIG_FILE ; 
 size_t CONFIG_IFACE ; 
 int UBUS_STATUS_INVALID_ARGUMENT ; 
 int UBUS_STATUS_OK ; 
 int __CONFIG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct blob_attr*) ; 
 char* FUNC2 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct blob_attr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_add_policy ; 
 struct hapd_interfaces* FUNC4 (struct ubus_object*) ; 
 scalar_t__ FUNC5 (struct hapd_interfaces*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC7(struct ubus_context *ctx, struct ubus_object *obj,
		   struct ubus_request_data *req, const char *method,
		   struct blob_attr *msg)
{
	struct blob_attr *tb[__CONFIG_MAX];
	struct hapd_interfaces *interfaces = FUNC4(obj);
	char buf[128];

	FUNC3(config_add_policy, __CONFIG_MAX, tb, FUNC0(msg), FUNC1(msg));

	if (!tb[CONFIG_FILE] || !tb[CONFIG_IFACE])
		return UBUS_STATUS_INVALID_ARGUMENT;

	FUNC6(buf, sizeof(buf), "bss_config=%s:%s",
		FUNC2(tb[CONFIG_IFACE]),
		FUNC2(tb[CONFIG_FILE]));

	if (FUNC5(interfaces, buf))
		return UBUS_STATUS_INVALID_ARGUMENT;

	return UBUS_STATUS_OK;
}