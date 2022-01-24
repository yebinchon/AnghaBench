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
 int /*<<< orphan*/  A_BOLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  foregroundColor ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(char *s, int colorOn) {
	(void) colorOn;
	(void) foregroundColor;

	// Set bold and foreground color for character reveal
	FUNC3(A_BOLD);
	if (FUNC4())
		FUNC3(FUNC0(1));
	
	// print source character
	FUNC1(s);
	
	// Unset foreground color
	if (FUNC4())
		FUNC2(FUNC0(1));
	FUNC2(A_BOLD);
}