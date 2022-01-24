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
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {int /*<<< orphan*/  text; int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ json_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_REJECT_DUPLICATES ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int RTMP_SERVICES_FORMAT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static json_t *FUNC8(const char *file)
{
	char *file_data = FUNC7(file);
	json_error_t error;
	json_t *root;
	json_t *list;
	int format_ver;

	if (!file_data)
		return NULL;

	root = FUNC5(file_data, JSON_REJECT_DUPLICATES, &error);
	FUNC0(file_data);

	if (!root) {
		FUNC1(LOG_WARNING,
		     "rtmp-common.c: [open_json_file] "
		     "Error reading JSON file (%d): %s",
		     error.line, error.text);
		return NULL;
	}

	format_ver = FUNC2(root, "format_version");

	if (format_ver != RTMP_SERVICES_FORMAT_VERSION) {
		FUNC1(LOG_DEBUG,
		     "rtmp-common.c: [open_json_file] "
		     "Wrong format version (%d), expected %d",
		     format_ver, RTMP_SERVICES_FORMAT_VERSION);
		FUNC3(root);
		return NULL;
	}

	list = FUNC6(root, "services");
	if (list)
		FUNC4(list);
	FUNC3(root);

	if (!list) {
		FUNC1(LOG_WARNING, "rtmp-common.c: [open_json_file] "
				  "No services list");
		return NULL;
	}

	return list;
}