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
struct TYPE_3__ {scalar_t__ sx; scalar_t__ w; } ;
typedef  TYPE_1__ RConsCanvas ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ useUtf8 ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6 (RConsCanvas *c, int x, int y, int height, int dot_style) {
	int i;
	/* do not render offscreen vertical lines */
	if (x + c->sx < 0) {
		return;
	}
	if (x + c->sx > c->w) {
		return;
	}
	const char *vline = useUtf8 ? FUNC5 (dot_style) : "|";
	FUNC3 (NULL, NULL);
	for (i = y; i < y + height; i++) {
		if (FUNC4 ()) {
			break;
		}
		if (FUNC0 (x, i)) {
			FUNC1 (vline);
		}
	}
	FUNC2 ();
}