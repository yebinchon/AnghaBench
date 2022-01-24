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
struct TYPE_3__ {int /*<<< orphan*/  change_context; } ;
typedef  int /*<<< orphan*/  ReorderBufferChange ;
typedef  TYPE_1__ ReorderBuffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

ReorderBufferChange *
FUNC2(ReorderBuffer *rb)
{
	ReorderBufferChange *change;

	change = (ReorderBufferChange *)
		FUNC0(rb->change_context, sizeof(ReorderBufferChange));

	FUNC1(change, 0, sizeof(ReorderBufferChange));
	return change;
}