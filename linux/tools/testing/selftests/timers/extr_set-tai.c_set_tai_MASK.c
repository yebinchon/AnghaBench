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
typedef  int /*<<< orphan*/  tx ;
struct timex {int constant; int /*<<< orphan*/  modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADJ_TAI ; 
 int FUNC0 (struct timex*) ; 
 int /*<<< orphan*/  FUNC1 (struct timex*,int /*<<< orphan*/ ,int) ; 

int FUNC2(int offset)
{
	struct timex tx;

	FUNC1(&tx, 0, sizeof(tx));

	tx.modes = ADJ_TAI;
	tx.constant = offset;

	return FUNC0(&tx);
}