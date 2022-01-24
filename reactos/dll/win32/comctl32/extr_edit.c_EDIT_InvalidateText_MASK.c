#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int style; } ;
typedef  int INT ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int ES_MULTILINE ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(EDITSTATE *es, INT start, INT end)
{
	if (end == start)
		return;

	if (end == -1)
		end = FUNC2(es);

	if (end < start) {
	    INT tmp = start;
	    start = end;
	    end = tmp;
	}

	if (es->style & ES_MULTILINE)
		FUNC0(es, start, end);
	else
		FUNC1(es, start, end);
}