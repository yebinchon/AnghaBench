#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ arrb; scalar_t__ arre; } ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef  TYPE_1__ QUERYTYPE ;
typedef  TYPE_2__ CHKVAL ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  checkcondition_arr ; 
 int FUNC4 (scalar_t__,void*,int,int /*<<< orphan*/ ) ; 

bool
FUNC5(QUERYTYPE *query, ArrayType *array, bool calcnot)
{
	CHKVAL		chkval;

	FUNC2(array);
	chkval.arrb = FUNC1(array);
	chkval.arre = chkval.arrb + FUNC0(array);
	return FUNC4(FUNC3(query) + query->size - 1,
				   (void *) &chkval, calcnot,
				   checkcondition_arr);
}