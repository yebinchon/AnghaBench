#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct hostapd_neighbor_entry {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  own_addr; } ;
struct blob_attr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int UBUS_STATUS_NOT_FOUND ; 
 TYPE_1__ b ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 void* FUNC2 (TYPE_1__*,char*) ; 
 struct hostapd_data* FUNC3 (struct ubus_object*) ; 
 struct hostapd_neighbor_entry* FUNC4 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_neighbor_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubus_context*,struct ubus_request_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ubus_context *ctx, struct ubus_object *obj,
		       struct ubus_request_data *req, const char *method,
		       struct blob_attr *msg)
{
	struct hostapd_data *hapd = FUNC3(obj);
	struct hostapd_neighbor_entry *nr;
	void *c;

	FUNC5(hapd);

	nr = FUNC4(hapd, hapd->own_addr, NULL);
	if (!nr)
		return UBUS_STATUS_NOT_FOUND;

	FUNC0(&b, 0);

	c = FUNC2(&b, "value");
	FUNC6(nr);
	FUNC1(&b, c);

	FUNC7(ctx, req, b.head);

	return 0;
}