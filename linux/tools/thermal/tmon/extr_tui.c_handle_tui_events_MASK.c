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
typedef  int /*<<< orphan*/  PANEL ;

/* Variables and functions */
 int EOF ; 
#define  KEY_LEFT 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cooling_device_window ; 
 int /*<<< orphan*/  data_panel ; 
 int dialogue_on ; 
 int /*<<< orphan*/ * dialogue_panel ; 
 int /*<<< orphan*/  dialogue_window ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  input_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int tmon_exit ; 
 int /*<<< orphan*/ * top ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

void *FUNC13(void *arg)
{
	int ch;

	FUNC3(cooling_device_window, TRUE);
	while ((ch = FUNC12(cooling_device_window)) != EOF) {
		if (tmon_exit)
			break;
		/* when term size is too small, no dialogue panels are set.
		 * we need to filter out such cases.
		 */
		if (!data_panel || !dialogue_panel ||
			!cooling_device_window ||
			!dialogue_window) {

			continue;
		}
		FUNC5(&input_lock);
		if (dialogue_on) {
			FUNC2(ch);
			/* top panel filter */
			if (ch == 'q' || ch == 'Q')
				ch = 0;
		}
		switch (ch) {
		case KEY_LEFT:
			FUNC0(cooling_device_window, 10, 0);
			break;
		case 9: /* TAB */
			top = (PANEL *)FUNC4(top);
			FUNC10(top);
			if (top == dialogue_panel) {
				dialogue_on = 1;
				FUNC9();
			} else {
				dialogue_on = 0;
				/* force refresh */
				FUNC8();
				FUNC7();
			}
			break;
		case 'q':
		case 'Q':
			tmon_exit = 1;
			break;
		}
		FUNC11();
		FUNC1();
		FUNC6(&input_lock);
	}

	if (arg)
		*(int *)arg = 0; /* make gcc happy */

	return NULL;
}