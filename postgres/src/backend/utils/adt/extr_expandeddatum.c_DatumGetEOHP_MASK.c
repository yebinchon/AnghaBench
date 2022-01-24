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
typedef  int /*<<< orphan*/  varattrib_1b_e ;
struct TYPE_3__ {int /*<<< orphan*/ * eohptr; } ;
typedef  TYPE_1__ varatt_expanded ;
typedef  int /*<<< orphan*/  ptr ;
typedef  int /*<<< orphan*/  ExpandedObjectHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

ExpandedObjectHeader *
FUNC6(Datum d)
{
	varattrib_1b_e *datum = (varattrib_1b_e *) FUNC1(d);
	varatt_expanded ptr;

	FUNC0(FUNC3(datum));
	FUNC5(&ptr, FUNC4(datum), sizeof(ptr));
	FUNC0(FUNC2(ptr.eohptr));
	return ptr.eohptr;
}