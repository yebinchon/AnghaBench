#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int from; scalar_t__ to; } ;
struct TYPE_3__ {unsigned int* froms; int /*<<< orphan*/  omap_entries; } ;
typedef  TYPE_1__ SOmapStream ;
typedef  TYPE_2__ SOmapEntry ;
typedef  int /*<<< orphan*/  RListIter ;

/* Variables and functions */
 int FUNC0 (unsigned int*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(void *stream, int address) {
	SOmapStream *omap_stream = (SOmapStream *) stream;
	SOmapEntry *omap_entry = 0;
	RListIter *it = 0;
	int i = 0;
	int pos = 0;
	int len = 0;

	if (!omap_stream) {
		return address;
	}

	len = FUNC6 (omap_stream->omap_entries);

	if (omap_stream->froms == 0) {
		omap_stream->froms = (unsigned int *) FUNC1 (4 * len);
		if (!omap_stream->froms) {
			return -1;
		}
		it = FUNC5 (omap_stream->omap_entries);
		while (FUNC4 (it)) {
			omap_entry = (SOmapEntry *) FUNC3 (it);
			omap_stream->froms[i] = omap_entry->from;
			i++;
		}
	}

	// mb (len -1) ???
	pos = FUNC0 (omap_stream->froms, address, 0, (len));

	if (pos == -1) {
		return -1;
	}

	if (omap_stream->froms[pos] != address) {
		pos -= 1;
	}
	omap_entry = (SOmapEntry *) FUNC2 (omap_stream->omap_entries, pos);
	if (!omap_entry) {
		return -1;
	}
	if (omap_entry->to == 0) {
		return omap_entry->to;
	}
	return omap_entry->to + (address - omap_entry->from);
}