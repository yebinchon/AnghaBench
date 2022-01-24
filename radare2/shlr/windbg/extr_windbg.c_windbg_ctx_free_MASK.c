#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  io_ptr; int /*<<< orphan*/  tlist_cache; int /*<<< orphan*/  plist_cache; } ;
typedef  TYPE_1__ WindCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(WindCtx **ctx) {
	if (!ctx || !*ctx) {
		return;
	}
	FUNC2 ((*ctx)->plist_cache);
	FUNC2 ((*ctx)->tlist_cache);
	FUNC1 ((*ctx)->io_ptr);
	FUNC0 (*ctx);
}