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
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ obs_module_t ;
typedef  int /*<<< orphan*/  lookup_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 char* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

lookup_t *FUNC9(obs_module_t *module,
				 const char *default_locale, const char *locale)
{
	struct dstr str = {0};
	lookup_t *lookup = NULL;

	if (!module || !default_locale || !locale) {
		FUNC2(LOG_WARNING, "obs_module_load_locale: Invalid parameters");
		return NULL;
	}

	FUNC4(&str, "locale/");
	FUNC3(&str, default_locale);
	FUNC3(&str, ".ini");

	char *file = FUNC6(module, str.array);
	if (file)
		lookup = FUNC8(file);

	FUNC1(file);

	if (!lookup) {
		FUNC2(LOG_WARNING, "Failed to load '%s' text for module: '%s'",
		     default_locale, module->file);
		goto cleanup;
	}

	if (FUNC0(locale, default_locale) == 0)
		goto cleanup;

	FUNC4(&str, "/locale/");
	FUNC3(&str, locale);
	FUNC3(&str, ".ini");

	file = FUNC6(module, str.array);

	if (!FUNC7(lookup, file))
		FUNC2(LOG_WARNING, "Failed to load '%s' text for module: '%s'",
		     locale, module->file);

	FUNC1(file);
cleanup:
	FUNC5(&str);
	return lookup;
}