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
typedef  size_t uint32 ;
struct TYPE_5__ {scalar_t__ buffer; scalar_t__ matchBitmap; scalar_t__ matchIterator; scalar_t__ list; } ;
struct TYPE_4__ {size_t totalentries; TYPE_2__** entries; scalar_t__ nkeys; int /*<<< orphan*/ * keys; int /*<<< orphan*/  keyCtx; } ;
typedef  TYPE_1__* GinScanOpaque ;
typedef  TYPE_2__* GinScanEntry ;

/* Variables and functions */
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void
FUNC5(GinScanOpaque so)
{
	uint32		i;

	if (so->keys == NULL)
		return;

	for (i = 0; i < so->totalentries; i++)
	{
		GinScanEntry entry = so->entries[i];

		if (entry->buffer != InvalidBuffer)
			FUNC1(entry->buffer);
		if (entry->list)
			FUNC2(entry->list);
		if (entry->matchIterator)
			FUNC3(entry->matchIterator);
		if (entry->matchBitmap)
			FUNC4(entry->matchBitmap);
	}

	FUNC0(so->keyCtx);

	so->keys = NULL;
	so->nkeys = 0;
	so->entries = NULL;
	so->totalentries = 0;
}