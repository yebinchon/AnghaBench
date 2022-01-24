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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*,size_t,char*,char*,...) ; 

int FUNC3(char *dst, size_t size, const char *name)
{
#ifdef USE_XDG
	char *xdg_ptr = getenv("XDG_CONFIG_HOME");

	// If XDG_CONFIG_HOME is unset,
	// we use the default $HOME/.config/[name] instead
	if (xdg_ptr == NULL) {
		char *home_ptr = getenv("HOME");
		if (home_ptr == NULL)
			bcrash("Could not get $HOME\n");

		if (!name || !*name) {
			return snprintf(dst, size, "%s/.config", home_ptr);
		} else {
			return snprintf(dst, size, "%s/.config/%s", home_ptr,
					name);
		}
	} else {
		if (!name || !*name)
			return snprintf(dst, size, "%s", xdg_ptr);
		else
			return snprintf(dst, size, "%s/%s", xdg_ptr, name);
	}
#else
	char *path_ptr = FUNC1("HOME");
	if (path_ptr == NULL)
		FUNC0("Could not get $HOME\n");

	if (!name || !*name)
		return FUNC2(dst, size, "%s", path_ptr);
	else
		return FUNC2(dst, size, "%s/.%s", path_ptr, name);
#endif
}