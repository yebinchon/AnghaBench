#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 TYPE_2__* curwin ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  p_ri ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5()
{
    int tempc, c;

    if (curwin->w_cursor.col)
    {
	if (!p_ri)
	    FUNC0();

	tempc = FUNC1();

	if ((c = FUNC4(tempc)) != 0)
	    FUNC3(c);

	if (!p_ri)
	    FUNC2();

    }
}