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
struct TYPE_5__ {int /*<<< orphan*/  offset; TYPE_1__* print; } ;
struct TYPE_4__ {scalar_t__ lines_cache_sz; int /*<<< orphan*/  lines_cache; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(RCore *core) {
	if (core->print->lines_cache_sz > 0) {
		int curr = FUNC1 (core->print->lines_cache, core->print->lines_cache_sz, core->offset);
		FUNC0 ("%d\n", curr);
	}
}