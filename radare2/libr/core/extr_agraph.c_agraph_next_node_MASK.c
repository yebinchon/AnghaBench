#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  curnode; } ;
struct TYPE_10__ {int /*<<< orphan*/  gnode; scalar_t__ is_dummy; } ;
typedef  TYPE_1__ RANode ;
typedef  TYPE_2__ RAGraph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(RAGraph *g) {
	RANode *a = FUNC2 (FUNC1 (g, g->curnode, true));
	while (a && a->is_dummy) {
		a = FUNC2 (FUNC1 (g, a->gnode, true));
	}
	FUNC3 (g, a);
	FUNC0 (g, FUNC2 (g->curnode), false);
}