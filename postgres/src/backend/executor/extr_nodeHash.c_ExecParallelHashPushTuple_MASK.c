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
typedef  int /*<<< orphan*/  dsa_pointer_atomic ;
typedef  int /*<<< orphan*/  dsa_pointer ;
struct TYPE_4__ {int /*<<< orphan*/  shared; } ;
struct TYPE_5__ {TYPE_1__ next; } ;
typedef  TYPE_2__* HashJoinTuple ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(dsa_pointer_atomic *head,
						  HashJoinTuple tuple,
						  dsa_pointer tuple_shared)
{
	for (;;)
	{
		tuple->next.shared = FUNC1(head);
		if (FUNC0(head,
												&tuple->next.shared,
												tuple_shared))
			break;
	}
}