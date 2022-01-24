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
struct wpabuf {int dummy; } ;
struct ubus_request_data {int dummy; } ;
struct ubus_object {int dummy; } ;
struct ubus_context {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  iface; struct hostapd_bss_config* conf; } ;
struct hostapd_bss_config {struct wpabuf* vendor_elements; } ;
struct blob_attr {int dummy; } ;

/* Variables and functions */
 int UBUS_STATUS_INVALID_ARGUMENT ; 
 int UBUS_STATUS_NOT_SUPPORTED ; 
 int UBUS_STATUS_OK ; 
 size_t VENDOR_ELEMENTS ; 
 int __VENDOR_ELEMENTS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct blob_attr*) ; 
 char* FUNC2 (struct blob_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct blob_attr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hostapd_data* FUNC4 (struct ubus_object*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  ve_policy ; 
 struct wpabuf* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,size_t) ; 

__attribute__((used)) static int
FUNC11(struct ubus_context *ctx, struct ubus_object *obj,
			struct ubus_request_data *req, const char *method,
			struct blob_attr *msg)
{
	struct blob_attr *tb[__VENDOR_ELEMENTS_MAX];
	struct hostapd_data *hapd = FUNC4(obj);
	struct hostapd_bss_config *bss = hapd->conf;
	struct wpabuf *elems;
	const char *pos;
	size_t len;

	FUNC3(ve_policy, __VENDOR_ELEMENTS_MAX, tb,
		      FUNC0(msg), FUNC1(msg));

	if (!tb[VENDOR_ELEMENTS])
		return UBUS_STATUS_INVALID_ARGUMENT;

	pos = FUNC2(tb[VENDOR_ELEMENTS]);
	len = FUNC7(pos);
	if (len & 0x01)
			return UBUS_STATUS_INVALID_ARGUMENT;

	len /= 2;
	if (len == 0) {
		FUNC9(bss->vendor_elements);
		bss->vendor_elements = NULL;
		return 0;
	}

	elems = FUNC8(len);
	if (elems == NULL)
		return 1;

	if (FUNC5(pos, FUNC10(elems, len), len)) {
		FUNC9(elems);
		return UBUS_STATUS_INVALID_ARGUMENT;
	}

	FUNC9(bss->vendor_elements);
	bss->vendor_elements = elems;

	/* update beacons if vendor elements were set successfully */
	if (FUNC6(hapd->iface) != 0)
		return UBUS_STATUS_NOT_SUPPORTED;
	return UBUS_STATUS_OK;
}