#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  arraystate; scalar_t__ scalarstate; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ ArrayBuildStateAny ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

ArrayBuildStateAny *
FUNC3(ArrayBuildStateAny *astate,
					Datum dvalue, bool disnull,
					Oid input_type,
					MemoryContext rcontext)
{
	if (astate == NULL)
		astate = FUNC2(input_type, rcontext, true);

	if (astate->scalarstate)
		(void) FUNC0(astate->scalarstate,
								dvalue, disnull,
								input_type, rcontext);
	else
		(void) FUNC1(astate->arraystate,
								   dvalue, disnull,
								   input_type, rcontext);

	return astate;
}