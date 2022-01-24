#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int keysize; int entrysize; void* hcxt; } ;
struct TYPE_7__ {int /*<<< orphan*/  pdir_hash; void* pdir_mcxt; } ;
typedef  int /*<<< orphan*/  PartitionDirectoryEntry ;
typedef  int /*<<< orphan*/  PartitionDirectoryData ;
typedef  TYPE_1__* PartitionDirectory ;
typedef  int /*<<< orphan*/  Oid ;
typedef  void* MemoryContext ;
typedef  TYPE_2__ HASHCTL ;

/* Variables and functions */
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,TYPE_2__*,int) ; 
 TYPE_1__* FUNC3 (int) ; 

PartitionDirectory
FUNC4(MemoryContext mcxt)
{
	MemoryContext oldcontext = FUNC1(mcxt);
	PartitionDirectory pdir;
	HASHCTL		ctl;

	FUNC0(&ctl, 0, sizeof(HASHCTL));
	ctl.keysize = sizeof(Oid);
	ctl.entrysize = sizeof(PartitionDirectoryEntry);
	ctl.hcxt = mcxt;

	pdir = FUNC3(sizeof(PartitionDirectoryData));
	pdir->pdir_mcxt = mcxt;
	pdir->pdir_hash = FUNC2("partition directory", 256, &ctl,
								  HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	FUNC1(oldcontext);
	return pdir;
}