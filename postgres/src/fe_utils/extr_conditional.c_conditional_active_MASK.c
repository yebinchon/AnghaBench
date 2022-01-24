#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ifState ;
typedef  int /*<<< orphan*/  ConditionalStack ;

/* Variables and functions */
 scalar_t__ IFSTATE_ELSE_TRUE ; 
 scalar_t__ IFSTATE_NONE ; 
 scalar_t__ IFSTATE_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

bool
FUNC1(ConditionalStack cstack)
{
	ifState		s = FUNC0(cstack);

	return s == IFSTATE_NONE || s == IFSTATE_TRUE || s == IFSTATE_ELSE_TRUE;
}