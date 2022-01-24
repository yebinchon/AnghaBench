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
struct TYPE_4__ {struct TYPE_4__* accel; struct TYPE_4__* maps; struct TYPE_4__* hdr; int /*<<< orphan*/ * rebase_info; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * bins; } ;
typedef  TYPE_1__ RDyldCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(RDyldCache *cache) {
	if (!cache) {
		return;
	}

	FUNC2 (cache->bins);
	cache->bins = NULL;
	FUNC1 (cache->buf);
	cache->buf = NULL;
	FUNC3 (cache->rebase_info);
	cache->rebase_info = NULL;
	FUNC0 (cache->hdr);
	FUNC0 (cache->maps);
	FUNC0 (cache->accel);
	FUNC0 (cache);
}