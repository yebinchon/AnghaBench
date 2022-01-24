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
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*,scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(RelFileNode rnode, ForkNumber forknum, BlockNumber segno)
{
	char	   *path;
	char	   *segpath;

	path = FUNC2(rnode, forknum);
	if (segno > 0)
	{
		segpath = FUNC1("%s.%u", path, segno);
		FUNC0(path);
		return segpath;
	}
	else
		return path;
}