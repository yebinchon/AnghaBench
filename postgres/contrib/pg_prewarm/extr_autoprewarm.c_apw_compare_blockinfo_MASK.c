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
typedef  int /*<<< orphan*/  BlockInfoRecord ;

/* Variables and functions */
 int /*<<< orphan*/  blocknum ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  database ; 
 int /*<<< orphan*/  filenode ; 
 int /*<<< orphan*/  forknum ; 
 int /*<<< orphan*/  tablespace ; 

__attribute__((used)) static int
FUNC1(const void *p, const void *q)
{
	const BlockInfoRecord *a = (const BlockInfoRecord *) p;
	const BlockInfoRecord *b = (const BlockInfoRecord *) q;

	FUNC0(database);
	FUNC0(tablespace);
	FUNC0(filenode);
	FUNC0(forknum);
	FUNC0(blocknum);

	return 0;
}