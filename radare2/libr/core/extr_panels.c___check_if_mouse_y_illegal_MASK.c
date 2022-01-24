#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int const h; } ;
struct TYPE_6__ {TYPE_1__* panels; } ;
struct TYPE_5__ {TYPE_3__* can; } ;
typedef  TYPE_1__ RPanels ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RConsCanvas ;

/* Variables and functions */

bool FUNC0(RCore *core, int y) {
	RPanels *panels = core->panels;
	RConsCanvas *can = panels->can;
	const int edge_y = 0;
	if (y <= edge_y || can->h - edge_y <= y) {
		return true;
	}
	return false;
}