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
typedef  scalar_t__ int32 ;
typedef  scalar_t__ TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

bool
FUNC1(TransactionId id1, TransactionId id2)
{
	int32		diff;

	if (!FUNC0(id1) || !FUNC0(id2))
		return (id1 >= id2);

	diff = (int32) (id1 - id2);
	return (diff >= 0);
}