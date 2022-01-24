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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 

__attribute__((used)) static void FUNC8(obs_property_t *list, json_t *service, bool show_all,
			const char *cur_service)
{
	json_t *servers;
	const char *name;
	bool common;

	if (!FUNC4(service)) {
		FUNC0(LOG_WARNING, "rtmp-common.c: [add_service] service "
				  "is not an object");
		return;
	}

	name = FUNC2(service, "name");
	if (!name) {
		FUNC0(LOG_WARNING, "rtmp-common.c: [add_service] service "
				  "has no name");
		return;
	}

	common = FUNC1(service, "common");
	if (!show_all && !common && FUNC7(cur_service, name) != 0) {
		return;
	}

	servers = FUNC5(service, "servers");
	if (!servers || !FUNC3(servers)) {
		FUNC0(LOG_WARNING,
		     "rtmp-common.c: [add_service] service "
		     "'%s' has no servers",
		     name);
		return;
	}

	FUNC6(list, name, name);
}