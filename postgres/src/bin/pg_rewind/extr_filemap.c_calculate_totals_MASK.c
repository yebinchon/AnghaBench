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
struct TYPE_5__ {int narray; scalar_t__ fetch_size; scalar_t__ total_size; TYPE_2__** array; } ;
typedef  TYPE_1__ filemap_t ;
struct TYPE_7__ {scalar_t__ bitmapsize; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ action; TYPE_4__ pagemap; scalar_t__ oldsize; scalar_t__ newsize; } ;
typedef  TYPE_2__ file_entry_t ;
typedef  int /*<<< orphan*/  datapagemap_iterator_t ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 scalar_t__ FILE_ACTION_COPY ; 
 scalar_t__ FILE_ACTION_COPY_TAIL ; 
 scalar_t__ FILE_TYPE_REGULAR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* filemap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	file_entry_t *entry;
	int			i;
	filemap_t  *map = filemap;

	map->total_size = 0;
	map->fetch_size = 0;

	for (i = 0; i < map->narray; i++)
	{
		entry = map->array[i];

		if (entry->type != FILE_TYPE_REGULAR)
			continue;

		map->total_size += entry->newsize;

		if (entry->action == FILE_ACTION_COPY)
		{
			map->fetch_size += entry->newsize;
			continue;
		}

		if (entry->action == FILE_ACTION_COPY_TAIL)
			map->fetch_size += (entry->newsize - entry->oldsize);

		if (entry->pagemap.bitmapsize > 0)
		{
			datapagemap_iterator_t *iter;
			BlockNumber blk;

			iter = FUNC0(&entry->pagemap);
			while (FUNC1(iter, &blk))
				map->fetch_size += BLCKSZ;

			FUNC2(iter);
		}
	}
}