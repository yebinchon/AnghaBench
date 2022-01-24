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
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 

obs_data_t *FUNC7(const char *json_file,
						const char *backup_ext)
{
	obs_data_t *file_data = FUNC4(json_file);
	if (!file_data && backup_ext && *backup_ext) {
		struct dstr backup_file = {0};

		FUNC2(&backup_file, json_file);
		if (*backup_ext != '.')
			FUNC1(&backup_file, ".");
		FUNC1(&backup_file, backup_ext);

		if (FUNC5(backup_file.array)) {
			FUNC0(LOG_WARNING,
			     "obs-data.c: "
			     "[obs_data_create_from_json_file_safe] "
			     "attempting backup file");

			/* delete current file if corrupt to prevent it from
			 * being backed up again */
			FUNC6(backup_file.array, json_file);

			file_data = FUNC4(json_file);
		}

		FUNC3(&backup_file);
	}

	return file_data;
}