#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int narray; TYPE_2__** array; } ;
typedef  TYPE_1__ filemap_t ;
struct TYPE_7__ {scalar_t__ bitmapsize; } ;
struct TYPE_6__ {scalar_t__ action; TYPE_4__ pagemap; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ file_entry_t ;

/* Variables and functions */
 scalar_t__ FILE_ACTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* filemap ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC4(void)
{
	filemap_t  *map = filemap;
	file_entry_t *entry;
	int			i;

	for (i = 0; i < map->narray; i++)
	{
		entry = map->array[i];
		if (entry->action != FILE_ACTION_NONE ||
			entry->pagemap.bitmapsize > 0)
		{
			FUNC3("%s (%s)", entry->path,
						 FUNC0(entry->action));

			if (entry->pagemap.bitmapsize > 0)
				FUNC1(&entry->pagemap);
		}
	}
	FUNC2(stdout);
}