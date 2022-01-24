#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  crosscheck_snapshot; int /*<<< orphan*/  snapshot; int /*<<< orphan*/ * estate; } ;
typedef  TYPE_1__ QueryDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(QueryDesc *qdesc)
{
	/* Can't be a live query */
	FUNC0(qdesc->estate == NULL);

	/* forget our snapshots */
	FUNC1(qdesc->snapshot);
	FUNC1(qdesc->crosscheck_snapshot);

	/* Only the QueryDesc itself need be freed */
	FUNC2(qdesc);
}