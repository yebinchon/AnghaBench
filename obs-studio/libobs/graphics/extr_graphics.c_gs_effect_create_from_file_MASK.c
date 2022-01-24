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
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 

gs_effect_t *FUNC6(const char *file, char **error_string)
{
	char *file_string;
	gs_effect_t *effect = NULL;

	if (!FUNC4("gs_effect_create_from_file", file))
		return NULL;

	effect = FUNC2(file);
	if (effect)
		return effect;

	file_string = FUNC5(file);
	if (!file_string) {
		FUNC1(LOG_ERROR, "Could not load effect file '%s'", file);
		return NULL;
	}

	effect = FUNC3(file_string, file, error_string);
	FUNC0(file_string);

	return effect;
}