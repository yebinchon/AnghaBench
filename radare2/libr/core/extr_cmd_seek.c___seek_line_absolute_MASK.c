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
struct TYPE_6__ {TYPE_1__* print; } ;
struct TYPE_5__ {int lines_cache_sz; int /*<<< orphan*/ * lines_cache; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(RCore *core, int numline) {
	if (numline < 1 || numline > core->print->lines_cache_sz - 1) {
		FUNC0 ("ERROR: Line must be between 1 and %d\n", core->print->lines_cache_sz - 1);
	} else {
		FUNC1 (core, core->print->lines_cache[numline - 1], 1);
	}
}