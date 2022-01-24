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
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static char *FUNC4(const char *name, int folder)
{
	char *ptr;
	wchar_t path_utf16[MAX_PATH];
	struct dstr path;

	FUNC0(NULL, folder, NULL, SHGFP_TYPE_CURRENT, path_utf16);

	FUNC3(path_utf16, 0, &ptr);
	FUNC2(&path, ptr);
	FUNC1(&path, "\\");
	FUNC1(&path, name);
	return path.array;
}