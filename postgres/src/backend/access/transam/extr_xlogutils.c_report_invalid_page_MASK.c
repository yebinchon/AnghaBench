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
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int elevel, RelFileNode node, ForkNumber forkno,
					BlockNumber blkno, bool present)
{
	char	   *path = FUNC2(node, forkno);

	if (present)
		FUNC0(elevel, "page %u of relation %s is uninitialized",
			 blkno, path);
	else
		FUNC0(elevel, "page %u of relation %s does not exist",
			 blkno, path);
	FUNC1(path);
}