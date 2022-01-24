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
struct TYPE_2__ {scalar_t__ b_u_line_lnum; int /*<<< orphan*/ * b_u_line_ptr; } ;

/* Variables and functions */
 TYPE_1__* curbuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1()
{
    if (curbuf->b_u_line_ptr != NULL)
    {
	FUNC0(curbuf->b_u_line_ptr);
	curbuf->b_u_line_ptr = NULL;
	curbuf->b_u_line_lnum = 0;
    }
}