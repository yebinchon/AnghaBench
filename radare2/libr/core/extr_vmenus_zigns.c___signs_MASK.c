#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_5__ {int /*<<< orphan*/  anal; } ;
struct TYPE_4__ {TYPE_2__* core; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RCoreVisualViewZigns ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RList *FUNC1(RCoreVisualViewZigns *status, ut64 addr, bool update) {
	RCore *core = status->core;
	return FUNC0 (core->anal);
}