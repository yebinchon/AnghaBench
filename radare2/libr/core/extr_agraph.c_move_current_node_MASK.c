#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  curnode; } ;
struct TYPE_6__ {int x; int y; } ;
typedef  TYPE_1__ RANode ;
typedef  TYPE_2__ RAGraph ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(RAGraph *g, int xdiff, int ydiff) {
	RANode *n = FUNC1 (g->curnode);
	if (n) {
		if (FUNC2 (g)) {
			xdiff = FUNC0 (xdiff);
			ydiff = FUNC0 (ydiff);
		}

		n->x += xdiff;
		n->y += ydiff;
	}
}