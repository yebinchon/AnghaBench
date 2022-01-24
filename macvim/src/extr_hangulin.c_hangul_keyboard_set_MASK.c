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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int hangul_keyboard_type ; 

void
FUNC2()
{
    int	    keyboard;
    char    *s;

    FUNC1();

    if ((s = FUNC0("VIM_KEYBOARD")) == NULL)
	s = FUNC0("HANGUL_KEYBOARD_TYPE");

    if (s)
    {
	if (*s == '2')
	    keyboard = 2;
	else
	    keyboard = 3;
	hangul_keyboard_type = keyboard;
    }
}