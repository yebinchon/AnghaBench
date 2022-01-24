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
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  help_msg ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const) ; 

__attribute__((used)) static int FUNC4(RCore *core, const char *input) {
	FUNC1 ();
	switch (input[0]) {
	case '?': // dmh?
		FUNC2 (core, help_msg);
		break;
	case 'b': // dmhb
		FUNC0 (core, input + 1);
		break;
	default:
		FUNC3 (core, input[0]);
		break;
	}
	return true;
}