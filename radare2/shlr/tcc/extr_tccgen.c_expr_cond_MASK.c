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
 scalar_t__ const_wanted ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  gnu_ext ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char tok ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void) {
	if (const_wanted) {
		FUNC1 ();
		if (tok == '?') {
			FUNC5 ();
			FUNC3 ();
			if (tok != ':' || !gnu_ext) {
				FUNC2 ();
			}
			FUNC4 (':');
			FUNC6 ();
		}
	} else {
		FUNC0 ();
	}
}