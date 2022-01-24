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
struct TYPE_3__ {int cc; int nbbs; int edges; int ebbs; void* bbsum; } ;
typedef  TYPE_1__ RSignGraph ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,int) ; 

__attribute__((used)) static bool FUNC3(const char *args0, int nargs, RSignGraph *graph) {
	const char *ptr = NULL;
	int i = 0;

	graph->cc = -1;
	graph->nbbs = -1;
	graph->edges = -1;
	graph->ebbs = -1;
	graph->bbsum = 0;

	for (i = 0; i < nargs; i++) {
		ptr = FUNC2 (args0, i);
		if (FUNC1 (ptr, "cc=")) {
			graph->cc = FUNC0 (ptr + 3);
		} else if (FUNC1 (ptr, "nbbs=")) {
			graph->nbbs = FUNC0 (ptr + 5);
		} else if (FUNC1 (ptr, "edges=")) {
			graph->edges = FUNC0 (ptr + 6);
		} else if (FUNC1 (ptr, "ebbs=")) {
			graph->ebbs = FUNC0 (ptr + 5);
		} else if (FUNC1 (ptr, "bbsum=")) {
			graph->bbsum = FUNC0 (ptr + 6);
		} else {
			return false;
		}
	}
	return true;
}