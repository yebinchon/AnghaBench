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
typedef  int /*<<< orphan*/  libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 

int FUNC5(libgdbr_t *g) {
	int ret = -1;
	if (!FUNC0 (g)) {
		goto end;
	}
	if (!g || FUNC4 (g, "?") < 0 || FUNC3 (g, false) < 0) {
		ret = -1;
		goto end;
	}
	ret = FUNC2 (g);
end:
	FUNC1 (g);
	return ret;
}