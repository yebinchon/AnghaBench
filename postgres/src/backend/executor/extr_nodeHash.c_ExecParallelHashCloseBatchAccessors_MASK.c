#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  outer_tuples; int /*<<< orphan*/  inner_tuples; } ;
struct TYPE_4__ {int nbatch; TYPE_2__* batches; } ;
typedef  TYPE_1__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(HashJoinTable hashtable)
{
	int			i;

	for (i = 0; i < hashtable->nbatch; ++i)
	{
		/* Make sure no files are left open. */
		FUNC2(hashtable->batches[i].inner_tuples);
		FUNC2(hashtable->batches[i].outer_tuples);
		FUNC1(hashtable->batches[i].inner_tuples);
		FUNC1(hashtable->batches[i].outer_tuples);
	}
	FUNC0(hashtable->batches);
	hashtable->batches = NULL;
}