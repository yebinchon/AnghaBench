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
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {int /*<<< orphan*/  text; int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ json_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_REJECT_DUPLICATES ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

obs_data_t *FUNC6(const char *json_string)
{
	obs_data_t *data = FUNC4();

	json_error_t error;
	json_t *root = FUNC2(json_string, JSON_REJECT_DUPLICATES, &error);

	if (root) {
		FUNC3(data, root);
		FUNC1(root);
	} else {
		FUNC0(LOG_ERROR,
		     "obs-data.c: [obs_data_create_from_json] "
		     "Failed reading json string (%d): %s",
		     error.line, error.text);
		FUNC5(data);
		data = NULL;
	}

	return data;
}