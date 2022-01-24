#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ copy_dest; TYPE_1__* fe_msgbuf; } ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef  TYPE_2__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COPY_NEW_FE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

__attribute__((used)) static void
FUNC5(CopyState cstate)
{
	if (cstate->copy_dest == COPY_NEW_FE)
	{
		/* Shouldn't have any unsent data */
		FUNC0(cstate->fe_msgbuf->len == 0);
		/* Send Copy Done message */
		FUNC4('c');
	}
	else
	{
		FUNC1(cstate, "\\.", 2);
		/* Need to flush out the trailer (this also appends a newline) */
		FUNC2(cstate);
		FUNC3(false);
	}
}