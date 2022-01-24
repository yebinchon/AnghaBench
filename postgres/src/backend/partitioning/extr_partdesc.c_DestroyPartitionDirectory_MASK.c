#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pdir_hash; } ;
struct TYPE_5__ {int /*<<< orphan*/  rel; } ;
typedef  TYPE_1__ PartitionDirectoryEntry ;
typedef  TYPE_2__* PartitionDirectory ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(PartitionDirectory pdir)
{
	HASH_SEQ_STATUS status;
	PartitionDirectoryEntry *pde;

	FUNC1(&status, pdir->pdir_hash);
	while ((pde = FUNC2(&status)) != NULL)
		FUNC0(pde->rel);
}