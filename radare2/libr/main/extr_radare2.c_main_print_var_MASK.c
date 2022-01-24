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

/* Variables and functions */
 int /*<<< orphan*/  R2_HOME_CACHEDIR ; 
 int /*<<< orphan*/  R2_HOME_CONFIGDIR ; 
 int /*<<< orphan*/  R2_HOME_DATADIR ; 
 int /*<<< orphan*/  R2_HOME_PLUGINS ; 
 int /*<<< orphan*/  R2_HOME_ZIGNS ; 
 int /*<<< orphan*/  R2_INCDIR ; 
 int /*<<< orphan*/  R2_LIBDIR ; 
 int /*<<< orphan*/  R2_PLUGINS ; 
 char* R2_PREFIX ; 
 int /*<<< orphan*/  R2_SDB_MAGIC ; 
 char* R_LIB_EXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC7(const char *var_name) {
	int i = 0;
#ifdef __WINDOWS__
	char *incdir = r_str_r2_prefix (R2_INCDIR);
	char *libdir = r_str_r2_prefix (R2_LIBDIR);
#else
	char *incdir = FUNC5 (R2_INCDIR);
	char *libdir = FUNC5 (R2_LIBDIR);
#endif
	char *confighome = FUNC2 (R2_HOME_CONFIGDIR);
	char *datahome = FUNC2 (R2_HOME_DATADIR);
	char *cachehome = FUNC2 (R2_HOME_CACHEDIR);
	char *homeplugins = FUNC2 (R2_HOME_PLUGINS);
	char *homezigns = FUNC2 (R2_HOME_ZIGNS);
	char *plugins = FUNC3 (R2_PLUGINS);
	char *magicpath = FUNC3 (R2_SDB_MAGIC);
	struct radare2_var_t {
		const char *name;
		const char *value;
	} r2_vars[] = {
		{ "R2_PREFIX", R2_PREFIX },
		{ "R2_MAGICPATH", magicpath },
		{ "R2_PREFIX", R2_PREFIX },
		{ "R2_INCDIR", incdir },
		{ "R2_LIBDIR", libdir },
		{ "R2_LIBEXT", R_LIB_EXT },
		{ "R2_RCONFIGHOME", confighome },
		{ "R2_RDATAHOME", datahome },
		{ "R2_RCACHEHOME", cachehome },
		{ "R2_LIBR_PLUGINS", plugins },
		{ "R2_USER_PLUGINS", homeplugins },
		{ "R2_USER_ZIGNS", homezigns },
		{ NULL, NULL }
	};
	int delta = 0;
	if (var_name && FUNC6 (var_name, "R2_", 3)) {
		delta = 3;
	}
	if (var_name) {
		while (r2_vars[i].name) {
			if (!FUNC4 (r2_vars[i].name + delta, var_name)) {
				FUNC1 ("%s\n", r2_vars[i].value);
				break;
			}
			i++;
		}
	} else {
		while (r2_vars[i].name) {
			FUNC1 ("%s=%s\n", r2_vars[i].name, r2_vars[i].value);
			i++;
		}
	}
	FUNC0 (incdir);
	FUNC0 (libdir);
	FUNC0 (confighome);
	FUNC0 (datahome);
	FUNC0 (cachehome);
	FUNC0 (homeplugins);
	FUNC0 (homezigns);
	FUNC0 (plugins);
	FUNC0 (magicpath);
	return 0;
}