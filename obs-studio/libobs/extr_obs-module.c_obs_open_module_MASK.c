#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct obs_module {char const* bin_path; char const* file; int /*<<< orphan*/  (* set_locale ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_pointer ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * next; void* data_path; int /*<<< orphan*/  mod_name; int /*<<< orphan*/  module; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_module_t ;
typedef  int /*<<< orphan*/  mod ;
struct TYPE_2__ {int /*<<< orphan*/  locale; int /*<<< orphan*/ * first_module; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int MODULE_ERROR ; 
 int MODULE_FILE_NOT_FOUND ; 
 int MODULE_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (struct obs_module*,int) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (struct obs_module*,char const*) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char const* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(obs_module_t **module, const char *path,
		    const char *data_path)
{
	struct obs_module mod = {0};
	int errorcode;

	if (!module || !path || !obs)
		return MODULE_ERROR;

#ifdef __APPLE__
	/* HACK: Do not load obsolete obs-browser build on macOS; the
	 * obs-browser plugin used to live in the Application Support
	 * directory. */
	if (astrstri(path, "Library/Application Support") != NULL &&
	    astrstri(path, "obs-browser") != NULL) {
		blog(LOG_WARNING, "Ignoring old obs-browser.so version");
		return MODULE_ERROR;
	}
#endif

	FUNC1(LOG_DEBUG, "---------------------------------");

	mod.module = FUNC6(path);
	if (!mod.module) {
		FUNC1(LOG_WARNING, "Module '%s' not loaded", path);
		return MODULE_FILE_NOT_FOUND;
	}

	errorcode = FUNC5(&mod, path);
	if (errorcode != MODULE_SUCCESS)
		return errorcode;

	mod.bin_path = FUNC3(path);
	mod.file = FUNC7(mod.bin_path, '/');
	mod.file = (!mod.file) ? mod.bin_path : (mod.file + 1);
	mod.mod_name = FUNC4(mod.file);
	mod.data_path = FUNC3(data_path);
	mod.next = obs->first_module;

	if (mod.file) {
		FUNC1(LOG_DEBUG, "Loading module: %s", mod.file);
	}

	*module = FUNC2(&mod, sizeof(mod));
	obs->first_module = (*module);
	mod.set_pointer(*module);

	if (mod.set_locale)
		mod.set_locale(obs->locale);

	return MODULE_SUCCESS;
}