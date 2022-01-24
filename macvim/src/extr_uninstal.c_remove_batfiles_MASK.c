#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  batname; } ;

/* Variables and functions */
 int TARGET_COUNT ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* targets ; 

__attribute__((used)) static int
FUNC5(int doit)
{
    char *batfile_path;
    int	 i;
    int	 found = 0;

    for (i = 1; i < TARGET_COUNT; ++i)
    {
	batfile_path = FUNC4(targets[i].batname);
	if (batfile_path != NULL && FUNC0(batfile_path))
	{
	    ++found;
	    if (doit)
	    {
		FUNC2("removing %s\n", batfile_path);
		FUNC3(batfile_path);
	    }
	    else
		FUNC2(" - the batch file %s\n", batfile_path);
	    FUNC1(batfile_path);
	}
    }
    return found;
}