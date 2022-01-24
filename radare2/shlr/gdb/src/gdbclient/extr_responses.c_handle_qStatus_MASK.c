#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char*) ; 

int FUNC5(libgdbr_t *g) {
	if (!g || !g->data || !*g->data) {
		return -1;
	}
	char *data = FUNC2 (g->data);
	char *tok = FUNC4 (data, ";");
	if (!tok) {
		FUNC0 (data);
		return -1;
	}
	// TODO: We do not yet handle the case where a trace is already running
	if (FUNC3 (tok, "T0", 2)) {
		FUNC1 (g);
		FUNC0 (data);
		return -1;
	}
	// Ensure that trace was never run
	while (tok != NULL) {
		if (!FUNC3 (tok, "tnotrun:0", 9)) {
			FUNC0 (data);
			return FUNC1 (g);
		}
		tok = FUNC4 (NULL, ";");
	}
	FUNC1 (g);
	FUNC0 (data);
	return -1;
}