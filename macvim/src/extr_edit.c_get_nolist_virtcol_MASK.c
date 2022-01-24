#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  colnr_T ;
struct TYPE_2__ {int /*<<< orphan*/  w_virtcol; int /*<<< orphan*/  w_cursor; scalar_t__ w_p_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPO_LISTWM ; 
 TYPE_1__* curwin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p_cpo ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static colnr_T
FUNC3()
{
    if (curwin->w_p_list && FUNC2(p_cpo, CPO_LISTWM) == NULL)
	return FUNC0(&curwin->w_cursor);
    FUNC1();
    return curwin->w_virtcol;
}