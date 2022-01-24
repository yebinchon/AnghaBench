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
struct dbus_sleep_info {scalar_t__ id; int type; int /*<<< orphan*/  c; int /*<<< orphan*/ * pending; TYPE_1__* service; } ;
typedef  int dbus_uint32_t ;
typedef  scalar_t__ dbus_bool_t ;
struct TYPE_2__ {char* uninhibit; int /*<<< orphan*/  name; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  DBUS_TYPE_UINT32 ; 
#define  GNOME_SM 129 
 int /*<<< orphan*/  LOG_ERROR ; 
#define  MATE_SM 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct dbus_sleep_info *info, const char *reason,
			bool active)
{
	DBusMessage *reply;
	const char *method;
	dbus_bool_t success;

	if (info->pending) {

		FUNC9(info->pending);
		reply = FUNC10(info->pending);
		FUNC11(info->pending);
		info->pending = NULL;

		if (reply) {
			success = FUNC6(reply, NULL,
							DBUS_TYPE_UINT32,
							&info->id,
							DBUS_TYPE_INVALID);
			if (!success)
				info->id = 0;
			FUNC8(reply);
		}
	}

	if (active == !!info->id)
		return;

	method = active ? "Inhibit" : info->service->uninhibit;

	reply = FUNC7(info->service->name,
					     info->service->path,
					     info->service->name, method);
	if (reply == NULL) {
		FUNC1(LOG_ERROR, "dbus_message_new_method_call failed");
		return;
	}

	if (active) {
		const char *program = "libobs";
		dbus_uint32_t flags = 0xC;
		dbus_uint32_t xid = 0;

		FUNC0(info->id == 0);

		switch (info->type) {
		case MATE_SM:
		case GNOME_SM:
			success = FUNC5(
				reply, DBUS_TYPE_STRING, &program,
				DBUS_TYPE_UINT32, &xid, DBUS_TYPE_STRING,
				&reason, DBUS_TYPE_UINT32, &flags,
				DBUS_TYPE_INVALID);
			break;
		default:
			success = FUNC5(
				reply, DBUS_TYPE_STRING, &program,
				DBUS_TYPE_STRING, &reason, DBUS_TYPE_INVALID);
		}

		if (success) {
			success = FUNC4(
				info->c, reply, &info->pending, -1);
			if (!success)
				info->pending = NULL;
		}
	} else {
		FUNC0(info->id != 0);
		success = FUNC5(
			reply, DBUS_TYPE_UINT32, &info->id, DBUS_TYPE_INVALID);
		if (success)
			success = FUNC3(info->c, reply, NULL);
		if (!success)
			info->id = 0;
	}

	FUNC2(info->c);
	FUNC8(reply);
}