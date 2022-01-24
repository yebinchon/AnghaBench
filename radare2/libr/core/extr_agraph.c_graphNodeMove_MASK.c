#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ is_dis; } ;
typedef  int /*<<< orphan*/  RCore ;
typedef  TYPE_1__ RAGraph ;

/* Variables and functions */
 scalar_t__ discroll ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(RAGraph *g, int dir, int speed) {
	int delta = (dir == 'k')? -1: 1;
	if (dir == 'H') {
		return;
	}
	if (dir == 'h' || dir == 'l') {
		// horizontal scroll
		if (FUNC0 (g)) {
			discroll = 0;
		} else {
			int delta = (dir == 'l')? 1: -1;
			FUNC1 (g, speed * delta, 0);
		}
		return;
	}
	RCore *core = NULL;
	// vertical scroll
	if (FUNC0 (g)) {
		discroll += (delta * speed);
	} else if (g->is_dis) {
		FUNC2 (core, "so %d", (delta * 4) * speed);
	} else {
		FUNC1 (g, 0, delta * speed);
	}
}