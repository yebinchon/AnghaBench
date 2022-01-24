#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* leaves; int /*<<< orphan*/  root; } ;
struct TYPE_4__ {TYPE_3__* name_map; } ;
struct TYPE_5__ {TYPE_1__ hotkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* obs ; 

void FUNC2(void)
{
	if (!obs || !obs->hotkeys.name_map)
		return;

	FUNC1(&obs->hotkeys.name_map->root, false);
	FUNC0(obs->hotkeys.name_map->leaves);
	FUNC0(obs->hotkeys.name_map);
}