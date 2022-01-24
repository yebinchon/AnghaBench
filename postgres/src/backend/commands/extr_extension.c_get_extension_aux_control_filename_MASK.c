#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; } ;
typedef  TYPE_1__ ExtensionControlFile ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPGPATH ; 
 char* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*,char*,char const*) ; 

__attribute__((used)) static char *
FUNC4(ExtensionControlFile *control,
								   const char *version)
{
	char	   *result;
	char	   *scriptdir;

	scriptdir = FUNC0(control);

	result = (char *) FUNC1(MAXPGPATH);
	FUNC3(result, MAXPGPATH, "%s/%s--%s.control",
			 scriptdir, control->name, version);

	FUNC2(scriptdir);

	return result;
}