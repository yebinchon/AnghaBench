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
struct TYPE_4__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ zend_stat_t ;
struct TYPE_5__ {char* executable_location; } ;
typedef  char* PG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  X_OK ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 char* FUNC10 (char*,char*,char**) ; 
 TYPE_2__ sapi_module ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char) ; 

__attribute__((used)) static void FUNC13(void)
{
	char *binary_location = NULL;
#ifdef PHP_WIN32
	binary_location = (char *)malloc(MAXPATHLEN);
	if (binary_location && GetModuleFileName(0, binary_location, MAXPATHLEN) == 0) {
		free(binary_location);
		PG(php_binary) = NULL;
	}
#else
	if (sapi_module.executable_location) {
		binary_location = (char *)FUNC9(MAXPATHLEN);
		if (binary_location && !FUNC12(sapi_module.executable_location, '/')) {
			char *envpath, *path;
			int found = 0;

			if ((envpath = FUNC8("PATH")) != NULL) {
				char *search_dir, search_path[MAXPATHLEN];
				char *last = NULL;
				zend_stat_t s;

				path = FUNC6(envpath);
				search_dir = FUNC10(path, ":", &last);

				while (search_dir) {
					FUNC11(search_path, MAXPATHLEN, "%s/%s", search_dir, sapi_module.executable_location);
					if (FUNC3(search_path, binary_location) && !FUNC2(binary_location, X_OK) && FUNC4(binary_location, &s) == 0 && FUNC1(s.st_mode)) {
						found = 1;
						break;
					}
					search_dir = FUNC10(NULL, ":", &last);
				}
				FUNC5(path);
			}
			if (!found) {
				FUNC7(binary_location);
				binary_location = NULL;
			}
		} else if (!FUNC3(sapi_module.executable_location, binary_location) || FUNC2(binary_location, X_OK)) {
			FUNC7(binary_location);
			binary_location = NULL;
		}
	}
#endif
	PG(php_binary) = binary_location;
}