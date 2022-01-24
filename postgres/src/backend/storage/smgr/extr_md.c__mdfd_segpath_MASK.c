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
struct TYPE_3__ {int /*<<< orphan*/  smgr_rnode; } ;
typedef  TYPE_1__* SMgrRelation ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*,scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(SMgrRelation reln, ForkNumber forknum, BlockNumber segno)
{
	char	   *path,
			   *fullpath;

	path = FUNC2(reln->smgr_rnode, forknum);

	if (segno > 0)
	{
		fullpath = FUNC1("%s.%u", path, segno);
		FUNC0(path);
	}
	else
		fullpath = path;

	return fullpath;
}