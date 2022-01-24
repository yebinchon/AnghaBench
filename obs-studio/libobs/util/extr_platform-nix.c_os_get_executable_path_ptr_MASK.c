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
struct dstr {char* array; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int PATH_MAX ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char const*) ; 
 int FUNC3 (char*,char*,int) ; 

char *FUNC4(const char *name)
{
	char exe[PATH_MAX];
	ssize_t count = FUNC3("/proc/self/exe", exe, PATH_MAX);
	const char *path_out = NULL;
	struct dstr path;

	if (count == -1) {
		return NULL;
	}

	path_out = FUNC0(exe);
	if (!path_out) {
		return NULL;
	}

	FUNC2(&path, path_out);
	FUNC1(&path, "/");

	if (name && *name) {
		FUNC1(&path, name);
	}

	return path.array;
}