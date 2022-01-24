#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  event_data; } ;
struct TYPE_8__ {int need_update_dim; int /*<<< orphan*/  curnode; } ;
struct TYPE_7__ {int is_mini; } ;
typedef  TYPE_1__ RANode ;
typedef  TYPE_2__ RAGraph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 () ; 

__attribute__((used)) static void FUNC4(RAGraph *g) {
	RANode *n = FUNC2 (g->curnode);
	if (n) {
		n->is_mini = !n->is_mini;
	}
	g->need_update_dim = 1;
	FUNC0 (FUNC3 ()->event_data);
	FUNC1 ((RAGraph *) g);
}