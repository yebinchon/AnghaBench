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
struct TYPE_3__ {scalar_t__ create_subid; } ;
typedef  scalar_t__ SubTransactionId ;
typedef  size_t Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* allocatedDescs ; 
 size_t numAllocatedDescs ; 

void
FUNC1(bool isCommit, SubTransactionId mySubid,
				  SubTransactionId parentSubid)
{
	Index		i;

	for (i = 0; i < numAllocatedDescs; i++)
	{
		if (allocatedDescs[i].create_subid == mySubid)
		{
			if (isCommit)
				allocatedDescs[i].create_subid = parentSubid;
			else
			{
				/* have to recheck the item after FreeDesc (ugly) */
				FUNC0(&allocatedDescs[i--]);
			}
		}
	}
}