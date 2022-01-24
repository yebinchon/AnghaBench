#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  area; int /*<<< orphan*/  parallel_state; } ;
struct TYPE_7__ {int /*<<< orphan*/  shared; } ;
struct TYPE_8__ {TYPE_1__ next; } ;
typedef  TYPE_2__* HashJoinTuple ;
typedef  TYPE_3__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline HashJoinTuple
FUNC2(HashJoinTable hashtable, HashJoinTuple tuple)
{
	HashJoinTuple next;

	FUNC0(hashtable->parallel_state);
	next = (HashJoinTuple) FUNC1(hashtable->area, tuple->next.shared);

	return next;
}