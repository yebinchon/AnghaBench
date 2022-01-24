#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dstr {char* array; int len; } ;
struct TYPE_5__ {size_t num; } ;
struct config_section {char* name; TYPE_2__ items; } ;
struct config_item {char* value; char* name; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; TYPE_2__ sections; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ config_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CONFIG_ERROR ; 
 int CONFIG_FILENOTFOUND ; 
 int CONFIG_SUCCESS ; 
 void* FUNC0 (int,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(config_t *config)
{
	FILE *f;
	struct dstr str, tmp;
	size_t i, j;
	int ret = CONFIG_ERROR;

	if (!config)
		return CONFIG_ERROR;
	if (!config->file)
		return CONFIG_ERROR;

	FUNC4(&str);
	FUNC4(&tmp);

	FUNC9(&config->mutex);

	f = FUNC8(config->file, "wb");
	if (!f) {
		FUNC10(&config->mutex);
		return CONFIG_FILENOTFOUND;
	}

	for (i = 0; i < config->sections.num; i++) {
		struct config_section *section = FUNC0(
			sizeof(struct config_section), &config->sections, i);

		if (i)
			FUNC1(&str, "\n");

		FUNC1(&str, "[");
		FUNC1(&str, section->name);
		FUNC1(&str, "]\n");

		for (j = 0; j < section->items.num; j++) {
			struct config_item *item = FUNC0(
				sizeof(struct config_item), &section->items, j);

			FUNC2(&tmp, item->value ? item->value : "");
			FUNC5(&tmp, "\\", "\\\\");
			FUNC5(&tmp, "\r", "\\r");
			FUNC5(&tmp, "\n", "\\n");

			FUNC1(&str, item->name);
			FUNC1(&str, "=");
			FUNC1(&str, tmp.array);
			FUNC1(&str, "\n");
		}
	}

#ifdef _WIN32
	if (fwrite("\xEF\xBB\xBF", 3, 1, f) != 1)
		goto cleanup;
#endif
	if (FUNC7(str.array, str.len, 1, f) != 1)
		goto cleanup;

	ret = CONFIG_SUCCESS;

cleanup:
	FUNC6(f);

	FUNC10(&config->mutex);

	FUNC3(&tmp);
	FUNC3(&str);

	return ret;
}