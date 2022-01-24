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
struct TYPE_3__ {int /*<<< orphan*/  bin; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int R_MODE_JSON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(RCore *r, int mode) {
	RList *mem = NULL;
	if (!r) {
		return false;
	}
	if (!FUNC0 (mode)) {
		if (!(FUNC1 (mode) || FUNC2 (mode))) {
			FUNC6 ("[Memory]\n");
		}
	}
	if (!(mem = FUNC4 (r->bin))) {
		if (FUNC0 (mode)) {
			FUNC5("[]");
		}
		return false;
	}
	if (FUNC0 (mode)) {
		FUNC5 ("[");
		FUNC3 (mem, 7, 0, R_MODE_JSON);
		FUNC6 ("]");
		return true;
	} else if (!(FUNC1 (mode) || FUNC2 (mode))) {
		FUNC3 (mem, 7, 0, mode);
	}
	return true;
}