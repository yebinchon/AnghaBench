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
typedef  int /*<<< orphan*/  ypos ;
typedef  int /*<<< orphan*/  xpos ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3() {
	char xpos[32];
	char ypos[32];
	(void)FUNC1 (); // skip first char
	int ch2 = FUNC1 ();

	// [32M - mousedown
	// [35M - mouseup
	if (ch2 == ';') {
		int i;
		// read until next ;
		for (i = 0; i < sizeof (xpos); i++) {
			char ch = FUNC1 ();
			if (ch == ';' || ch == 'M') {
				break;
			}
			xpos[i] = ch;
		}
		xpos[i] = 0;
		for (i = 0; i < sizeof (ypos); i++) {
			char ch = FUNC1 ();
			if (ch == ';' || ch == 'M') {
				break;
			}
			ypos[i] = ch;
		}
		ypos[i] = 0;
		FUNC2 (FUNC0 (xpos), FUNC0 (ypos));
		(void) FUNC1 ();
		// ignored
		int ch = FUNC1 ();
		if (ch == 27) {
			ch = FUNC1 (); // '['
		}
		if (ch == '[') {
			do {
				ch = FUNC1 (); // '3'
			} while (ch != 'M');
		}
	}
	return 0;
}