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
#define  KEY_ESC 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * dialog_input_result ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  load_config_help ; 
 int /*<<< orphan*/  load_config_text ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{

	while (1) {
		int res;
		FUNC2();
		res = FUNC3(NULL, load_config_text,
				      11, 55, filename);
		switch(res) {
		case 0:
			if (!dialog_input_result[0])
				return;
			if (!FUNC1(dialog_input_result)) {
				FUNC4(dialog_input_result);
				FUNC7(1);
				return;
			}
			FUNC6(NULL, FUNC0("File does not exist!"), 5, 38);
			break;
		case 1:
			FUNC5(FUNC0("Load Alternate Configuration"), load_config_help);
			break;
		case KEY_ESC:
			return;
		}
	}
}