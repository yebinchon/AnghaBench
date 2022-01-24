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
struct dstr {int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int RTLD_FIRST ; 
 int RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,char const*) ; 

void *FUNC7(const char *path)
{
	struct dstr dylib_name;

	if (!path)
		return NULL;

	FUNC6(&dylib_name, path);
#ifdef __APPLE__
	if (!dstr_find(&dylib_name, ".so") && !dstr_find(&dylib_name, ".dylib"))
#else
	if (!FUNC4(&dylib_name, ".so"))
#endif
		FUNC3(&dylib_name, ".so");

#ifdef __APPLE__
	void *res = dlopen(dylib_name.array, RTLD_LAZY | RTLD_FIRST);
#else
	void *res = FUNC2(dylib_name.array, RTLD_LAZY);
#endif
	if (!res)
		FUNC0(LOG_ERROR, "os_dlopen(%s->%s): %s\n", path,
		     dylib_name.array, FUNC1());

	FUNC5(&dylib_name);
	return res;
}