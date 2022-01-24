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
struct TYPE_4__ {scalar_t__ persistency; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; TYPE_1__ data; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* MyReplicationSlot ; 
 scalar_t__ RS_PERSISTENT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void)
{
	ReplicationSlot *slot = MyReplicationSlot;

	FUNC0(slot != NULL);
	FUNC0(slot->data.persistency != RS_PERSISTENT);

	FUNC3(&slot->mutex);
	slot->data.persistency = RS_PERSISTENT;
	FUNC4(&slot->mutex);

	FUNC1();
	FUNC2();
}