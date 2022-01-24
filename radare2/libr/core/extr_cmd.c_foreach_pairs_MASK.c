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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static void FUNC5(RCore *core, const char *cmd, const char *each) {
	const char *arg;
	int pair = 0;
	for (arg = each ; ; ) {
		char *next = FUNC4 (arg, ' ');
		if (next) {
			*next = 0;
		}
		if (arg && *arg) {
			ut64 n = FUNC3 (NULL, arg);
			if (pair%2) {
				FUNC0 (core, n);
				FUNC1 (core, cmd);
			} else {
				FUNC2 (core, n, 1);
			}
			pair++;
		}
		if (!next) {
			break;
		}
		arg = next + 1;
	}
}