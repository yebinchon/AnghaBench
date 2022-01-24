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
struct os_dir {int first; int /*<<< orphan*/  wfd; int /*<<< orphan*/  handle; } ;
struct dstr {int /*<<< orphan*/  len; int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  struct os_dir os_dir_t ;
typedef  int /*<<< orphan*/  WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct os_dir* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

os_dir_t *FUNC7(const char *path)
{
	struct dstr path_str = {0};
	struct os_dir *dir = NULL;
	WIN32_FIND_DATA wfd;
	HANDLE handle;
	wchar_t *w_path;

	FUNC4(&path_str, path);
	FUNC3(&path_str, "/*.*");

	if (FUNC6(path_str.array, path_str.len, &w_path) > 0) {
		handle = FUNC0(w_path, &wfd);
		if (handle != INVALID_HANDLE_VALUE) {
			dir = FUNC2(sizeof(struct os_dir));
			dir->handle = handle;
			dir->first = true;
			dir->wfd = wfd;
		}

		FUNC1(w_path);
	}

	FUNC5(&path_str);

	return dir;
}