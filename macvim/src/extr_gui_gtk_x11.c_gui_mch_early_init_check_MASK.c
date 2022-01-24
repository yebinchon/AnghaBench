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
typedef  scalar_t__ char_u ;
struct TYPE_2__ {int /*<<< orphan*/  dying; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FAIL ; 
 scalar_t__ NUL ; 
 int OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ e_opendisp ; 
 TYPE_1__ gui ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 

int
FUNC3(void)
{
    char_u *p;

    /* Guess that when $DISPLAY isn't set the GUI can't start. */
    p = FUNC2((char_u *)"DISPLAY");
    if (p == NULL || *p == NUL)
    {
	gui.dying = TRUE;
	FUNC0(FUNC1((char *)e_opendisp));
	return FAIL;
    }
    return OK;
}