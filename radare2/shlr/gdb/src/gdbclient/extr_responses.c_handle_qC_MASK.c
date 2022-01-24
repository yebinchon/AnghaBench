#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  multiprocess; } ;
struct TYPE_6__ {char* data; size_t data_len; TYPE_1__ stub_features; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ libgdbr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

int FUNC3(libgdbr_t *g) {
	// We get process and thread ID
	if (FUNC2 (g->data, "QC", 2)) {
		FUNC1 (g);
		return -1;
	}
	g->data[g->data_len] = '\0';
	if (FUNC0 (g->data + 2, &g->pid, &g->tid, g->stub_features.multiprocess) < 0) {
		FUNC1 (g);
		return -1;
	}
	return FUNC1 (g);
}