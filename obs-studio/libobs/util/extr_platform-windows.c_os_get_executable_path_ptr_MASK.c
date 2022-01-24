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
typedef  int /*<<< orphan*/  wchar_t ;
struct dstr {char* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 char* FUNC6 (char*,char) ; 

char *FUNC7(const char *name)
{
	char *ptr;
	char *slash;
	wchar_t path_utf16[MAX_PATH];
	struct dstr path;

	FUNC0(NULL, path_utf16, MAX_PATH);

	FUNC5(path_utf16, 0, &ptr);
	FUNC2(&path, ptr);
	FUNC3(&path, "\\", "/");
	slash = FUNC6(path.array, '/');
	if (slash) {
		size_t len = slash - path.array + 1;
		FUNC4(&path, len);
	}

	if (name && *name) {
		FUNC1(&path, name);
	}

	return path.array;
}