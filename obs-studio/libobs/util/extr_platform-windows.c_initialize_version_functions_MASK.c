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
typedef  scalar_t__ ver_query_value_w_t ;
typedef  scalar_t__ get_file_version_info_w_t ;
typedef  scalar_t__ get_file_version_info_size_w_t ;
typedef  scalar_t__ HMODULE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ get_file_version_info ; 
 scalar_t__ get_file_version_info_size ; 
 int ver_initialize_success ; 
 int ver_initialized ; 
 scalar_t__ ver_query_value ; 

__attribute__((used)) static bool FUNC4(void)
{
	HMODULE ver = FUNC0(L"version");

	ver_initialized = true;

	if (!ver) {
		ver = FUNC2(L"version");
		if (!ver) {
			FUNC3(LOG_ERROR, "Failed to load windows "
					"version library");
			return false;
		}
	}

	get_file_version_info_size =
		(get_file_version_info_size_w_t)FUNC1(
			ver, "GetFileVersionInfoSizeW");
	get_file_version_info = (get_file_version_info_w_t)FUNC1(
		ver, "GetFileVersionInfoW");
	ver_query_value =
		(ver_query_value_w_t)FUNC1(ver, "VerQueryValueW");

	if (!get_file_version_info_size || !get_file_version_info ||
	    !ver_query_value) {
		FUNC3(LOG_ERROR, "Failed to load windows version "
				"functions");
		return false;
	}

	ver_initialize_success = true;
	return true;
}