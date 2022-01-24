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
struct TYPE_6__ {int /*<<< orphan*/  event_data; } ;
struct TYPE_5__ {int is_tiny; int need_update_dim; } ;
typedef  TYPE_1__ RAGraph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 () ; 

__attribute__((used)) static void FUNC3 (RAGraph *g) {
	g->is_tiny = !g->is_tiny;
	g->need_update_dim = 1;
	FUNC0 (FUNC2 ()->event_data);
	FUNC1 ((RAGraph *) g);
	//remove_dummy_nodes (g);
}