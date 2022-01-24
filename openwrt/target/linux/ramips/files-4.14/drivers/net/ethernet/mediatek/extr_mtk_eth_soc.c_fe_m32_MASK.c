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
typedef  int /*<<< orphan*/  u32 ;
struct fe_priv {int /*<<< orphan*/  page_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int fe_base ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fe_priv *eth, u32 clear, u32 set, unsigned reg)
{
	u32 val;

	FUNC2(&eth->page_lock);
	val = FUNC0(fe_base + reg);
	val &= ~clear;
	val |= set;
	FUNC1(val, fe_base + reg);
	FUNC3(&eth->page_lock);
}