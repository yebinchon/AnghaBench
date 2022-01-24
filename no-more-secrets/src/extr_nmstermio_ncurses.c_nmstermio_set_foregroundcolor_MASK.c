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
 int /*<<< orphan*/  COLOR_BLACK ; 
 int /*<<< orphan*/  COLOR_BLUE ; 
 int /*<<< orphan*/  COLOR_CYAN ; 
 int /*<<< orphan*/  COLOR_GREEN ; 
 int /*<<< orphan*/  COLOR_MAGENTA ; 
 int /*<<< orphan*/  COLOR_RED ; 
 int /*<<< orphan*/  COLOR_WHITE ; 
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int /*<<< orphan*/  foregroundColor ; 
 scalar_t__ FUNC0 (char*,char*) ; 

void FUNC1(char *c) {

	if(FUNC0("white", c) == 0)
		foregroundColor =  COLOR_WHITE;
	else if(FUNC0("yellow", c) == 0)
		foregroundColor = COLOR_YELLOW;
	else if(FUNC0("black", c) == 0)
		foregroundColor = COLOR_BLACK;
	else if(FUNC0("magenta", c) == 0)
		foregroundColor = COLOR_MAGENTA;
	else if(FUNC0("blue", c) == 0)
		foregroundColor = COLOR_BLUE;
	else if(FUNC0("green", c) == 0)
		foregroundColor = COLOR_GREEN;
	else if(FUNC0("red", c) == 0)
		foregroundColor = COLOR_RED;
	else if(FUNC0("cyan", c) == 0)
		foregroundColor = COLOR_CYAN;
	else
		foregroundColor = COLOR_BLUE;
}