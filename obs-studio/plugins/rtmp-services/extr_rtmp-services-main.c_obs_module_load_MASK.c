#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  proc_handler_t ;
struct TYPE_4__ {int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTMP_SERVICES_LOG_STR ; 
 int /*<<< orphan*/  RTMP_SERVICES_URL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  confirm_service_file ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ module_name ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 char* FUNC6 () ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  refresh_callback ; 
 int /*<<< orphan*/  rtmp_common_service ; 
 int /*<<< orphan*/  rtmp_custom_service ; 
 int /*<<< orphan*/  update_info ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC12(void)
{
	FUNC3();

	FUNC2(&module_name, "rtmp-services plugin (libobs ");
	FUNC1(&module_name, FUNC6());
	FUNC1(&module_name, ")");

	proc_handler_t *ph = FUNC5();
	FUNC10(ph, "void twitch_ingests_refresh(int seconds)",
			 refresh_callback, NULL);

#if !defined(_WIN32) || CHECK_FOR_SERVICE_UPDATES
	char *local_dir = FUNC8("");
	char *cache_dir = FUNC7("");

	if (cache_dir) {
		update_info = FUNC11(RTMP_SERVICES_LOG_STR,
						 module_name.array,
						 RTMP_SERVICES_URL, local_dir,
						 cache_dir,
						 confirm_service_file, NULL);
	}

	FUNC4();

	FUNC0(local_dir);
	FUNC0(cache_dir);
#endif

	FUNC9(&rtmp_common_service);
	FUNC9(&rtmp_custom_service);
	return true;
}