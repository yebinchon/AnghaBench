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
struct TYPE_3__ {int /*<<< orphan*/  rcmd; } ;
typedef  int /*<<< orphan*/  RLineCompletion ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 char** FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC5(RCore *core, RLineCompletion *completion, const char *str) {
	FUNC2 (str);
	int count;
	int length = FUNC3 (str);
	char **keys = FUNC0(core->rcmd, &count);
	if (!keys) {
		return;
	}
	int i;
	for (i = 0; i < count; i++) {
		if (!FUNC4 (keys[i], str, length)) {
			FUNC1 (completion, keys[i]);
		}
	}
}