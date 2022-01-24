#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(void *user, const char *input) {
	RCore *core = (RCore *) user;
	if (!FUNC2 (input, "a2", 2)) {
		switch (input[2]) {
		case 'f':
			if (!FUNC0 (core, core->offset)) {
				FUNC1 ("a2f: Failed to analyze function.\n");
			}
			break;
		default:
			FUNC1 ("Usage: a2f\n");
			FUNC1 ("a2f is the new (experimental) analysis engine\n");
			FUNC1 ("Use with caution.\n");
			break;
		}
		return true;
	}
	return false;
}