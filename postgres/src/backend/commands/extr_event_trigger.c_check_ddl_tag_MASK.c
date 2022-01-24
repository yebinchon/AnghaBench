#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* obtypename; int /*<<< orphan*/  supported; } ;
typedef  TYPE_1__ event_trigger_support_data ;
typedef  int /*<<< orphan*/  event_trigger_command_tag_check_result ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED ; 
 int /*<<< orphan*/  EVENT_TRIGGER_COMMAND_TAG_NOT_SUPPORTED ; 
 int /*<<< orphan*/  EVENT_TRIGGER_COMMAND_TAG_OK ; 
 TYPE_1__* event_trigger_support ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static event_trigger_command_tag_check_result
FUNC2(const char *tag)
{
	const char *obtypename;
	const event_trigger_support_data *etsd;

	/*
	 * Handle some idiosyncratic special cases.
	 */
	if (FUNC0(tag, "CREATE TABLE AS") == 0 ||
		FUNC0(tag, "SELECT INTO") == 0 ||
		FUNC0(tag, "REFRESH MATERIALIZED VIEW") == 0 ||
		FUNC0(tag, "ALTER DEFAULT PRIVILEGES") == 0 ||
		FUNC0(tag, "ALTER LARGE OBJECT") == 0 ||
		FUNC0(tag, "COMMENT") == 0 ||
		FUNC0(tag, "GRANT") == 0 ||
		FUNC0(tag, "REVOKE") == 0 ||
		FUNC0(tag, "DROP OWNED") == 0 ||
		FUNC0(tag, "IMPORT FOREIGN SCHEMA") == 0 ||
		FUNC0(tag, "SECURITY LABEL") == 0)
		return EVENT_TRIGGER_COMMAND_TAG_OK;

	/*
	 * Otherwise, command should be CREATE, ALTER, or DROP.
	 */
	if (FUNC1(tag, "CREATE ", 7) == 0)
		obtypename = tag + 7;
	else if (FUNC1(tag, "ALTER ", 6) == 0)
		obtypename = tag + 6;
	else if (FUNC1(tag, "DROP ", 5) == 0)
		obtypename = tag + 5;
	else
		return EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED;

	/*
	 * ...and the object type should be something recognizable.
	 */
	for (etsd = event_trigger_support; etsd->obtypename != NULL; etsd++)
		if (FUNC0(etsd->obtypename, obtypename) == 0)
			break;
	if (etsd->obtypename == NULL)
		return EVENT_TRIGGER_COMMAND_TAG_NOT_RECOGNIZED;
	if (!etsd->supported)
		return EVENT_TRIGGER_COMMAND_TAG_NOT_SUPPORTED;
	return EVENT_TRIGGER_COMMAND_TAG_OK;
}