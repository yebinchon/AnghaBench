#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  omap_entries; } ;
typedef  TYPE_1__ SOmapStream ;
typedef  int /*<<< orphan*/  SOmapEntry ;
typedef  int /*<<< orphan*/  RListIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void *stream) {
	SOmapStream *omap_stream = (SOmapStream *) stream;
	SOmapEntry *omap_entry = NULL;
	RListIter *it = FUNC4 (omap_stream->omap_entries);
	while (FUNC3 (it)) {
		omap_entry = (SOmapEntry *) FUNC2 (it);
		FUNC0 (omap_entry);
	}
	FUNC1 (omap_stream->omap_entries);
}