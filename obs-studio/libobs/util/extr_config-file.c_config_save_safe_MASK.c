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
struct dstr {char* array; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {char* file; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 int CONFIG_ERROR ; 
 int CONFIG_SUCCESS ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 scalar_t__ FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(config_t *config, const char *temp_ext,
		     const char *backup_ext)
{
	struct dstr temp_file = {0};
	struct dstr backup_file = {0};
	char *file = config->file;
	int ret;

	if (!temp_ext || !*temp_ext) {
		FUNC0(LOG_ERROR, "config_save_safe: invalid "
				"temporary extension specified");
		return CONFIG_ERROR;
	}

	FUNC6(&config->mutex);

	FUNC3(&temp_file, config->file);
	if (*temp_ext != '.')
		FUNC2(&temp_file, ".");
	FUNC2(&temp_file, temp_ext);

	config->file = temp_file.array;
	ret = FUNC1(config);
	config->file = file;

	if (ret != CONFIG_SUCCESS) {
		FUNC0(LOG_ERROR,
		     "config_save_safe: failed to "
		     "write to %s",
		     temp_file.array);
		goto cleanup;
	}

	if (backup_ext && *backup_ext) {
		FUNC3(&backup_file, config->file);
		if (*backup_ext != '.')
			FUNC2(&backup_file, ".");
		FUNC2(&backup_file, backup_ext);
	}

	if (FUNC5(file, temp_file.array, backup_file.array) != 0)
		ret = CONFIG_ERROR;

cleanup:
	FUNC7(&config->mutex);
	FUNC4(&temp_file);
	FUNC4(&backup_file);
	return ret;
}