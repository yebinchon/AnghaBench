#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* directory; } ;
typedef  TYPE_1__ ExtensionControlFile ;

/* Variables and functions */
 int MAXPGPATH ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  my_exec_path ; 
 scalar_t__ FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static char *
FUNC6(ExtensionControlFile *control)
{
	char		sharepath[MAXPGPATH];
	char	   *result;

	/*
	 * The directory parameter can be omitted, absolute, or relative to the
	 * installation's share directory.
	 */
	if (!control->directory)
		return FUNC0();

	if (FUNC2(control->directory))
		return FUNC4(control->directory);

	FUNC1(my_exec_path, sharepath);
	result = (char *) FUNC3(MAXPGPATH);
	FUNC5(result, MAXPGPATH, "%s/%s", sharepath, control->directory);

	return result;
}