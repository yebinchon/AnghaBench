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
struct TYPE_3__ {scalar_t__ coutput; } ;
typedef  TYPE_1__ RAsmState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(RAsmState *as, char *str) {
	int i;
	if (as->coutput) {
		FUNC0 ("\"");
		for (i = 1; *str; str += 2, i += 2) {
			if (!(i % 41)) {
				FUNC0 ("\" \\\n\"");
				i = 1;
			}
			FUNC0 ("\\x%c%c", *str, str[1]);
		}
		FUNC0 ("\"\n");
	} else {
		FUNC0 ("%s\n", str);
	}
}