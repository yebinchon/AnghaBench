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
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  GlobalTransactionData ;
typedef  int /*<<< orphan*/  GlobalTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TwoPhaseStateData ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_prepared_xacts ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prepXacts ; 

Size
FUNC4(void)
{
	Size		size;

	/* Need the fixed struct, the array of pointers, and the GTD structs */
	size = FUNC3(TwoPhaseStateData, prepXacts);
	size = FUNC1(size, FUNC2(max_prepared_xacts,
								   sizeof(GlobalTransaction)));
	size = FUNC0(size);
	size = FUNC1(size, FUNC2(max_prepared_xacts,
								   sizeof(GlobalTransactionData)));

	return size;
}