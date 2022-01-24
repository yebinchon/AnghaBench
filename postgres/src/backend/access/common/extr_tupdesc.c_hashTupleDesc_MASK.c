#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_6__ {int atttypid; } ;
struct TYPE_5__ {int natts; int tdtypeid; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

uint32
FUNC3(TupleDesc desc)
{
	uint32		s;
	int			i;

	s = FUNC1(0, FUNC2(desc->natts));
	s = FUNC1(s, FUNC2(desc->tdtypeid));
	for (i = 0; i < desc->natts; ++i)
		s = FUNC1(s, FUNC2(FUNC0(desc, i)->atttypid));

	return s;
}