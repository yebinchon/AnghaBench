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
struct TYPE_4__ {int /*<<< orphan*/  info; } ;
typedef  TYPE_1__ DsoJsonObj ;

/* Variables and functions */
 int /*<<< orphan*/  DSO_JSON_NULL ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

DsoJsonObj * FUNC2 () {
	DsoJsonObj *x = FUNC0 (sizeof (DsoJsonObj), 1);
	if (!x) return NULL;
	x->info = FUNC1 (DSO_JSON_NULL);
	return x;
}