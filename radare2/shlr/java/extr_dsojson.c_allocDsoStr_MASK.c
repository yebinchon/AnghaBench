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
struct TYPE_3__ {unsigned int len; void* data; } ;
typedef  TYPE_1__ DsoJsonStr ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2 (DsoJsonStr *dsoStr, unsigned int sz) {
	FUNC1 (dsoStr->data);
	if (sz > 0) dsoStr->data = FUNC0 (sz, 1);
	else dsoStr->data = FUNC0 (10, 1);
	dsoStr->len = sz;
}