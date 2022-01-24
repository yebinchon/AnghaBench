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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

char *FUNC5(const char *file) {
	char *dir_path = FUNC2 ();
	FUNC4 (dir_path);
	char *file_path = FUNC3 (FUNC1 ("%s", "%s"), dir_path, file);
	FUNC0 (dir_path);
	return file_path;
}