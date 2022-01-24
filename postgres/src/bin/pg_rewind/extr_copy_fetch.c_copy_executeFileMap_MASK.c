#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int narray; TYPE_2__** array; } ;
typedef  TYPE_1__ filemap_t ;
struct TYPE_7__ {int action; int /*<<< orphan*/  newsize; int /*<<< orphan*/  oldsize; int /*<<< orphan*/  path; int /*<<< orphan*/  pagemap; } ;
typedef  TYPE_2__ file_entry_t ;

/* Variables and functions */
#define  FILE_ACTION_COPY 133 
#define  FILE_ACTION_COPY_TAIL 132 
#define  FILE_ACTION_CREATE 131 
#define  FILE_ACTION_NONE 130 
#define  FILE_ACTION_REMOVE 129 
#define  FILE_ACTION_TRUNCATE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(filemap_t *map)
{
	file_entry_t *entry;
	int			i;

	for (i = 0; i < map->narray; i++)
	{
		entry = map->array[i];
		FUNC2(&entry->pagemap, entry->path);

		switch (entry->action)
		{
			case FILE_ACTION_NONE:
				/* ok, do nothing.. */
				break;

			case FILE_ACTION_COPY:
				FUNC4(entry->path, 0, entry->newsize, true);
				break;

			case FILE_ACTION_TRUNCATE:
				FUNC5(entry->path, entry->newsize);
				break;

			case FILE_ACTION_COPY_TAIL:
				FUNC4(entry->path, entry->oldsize,
									   entry->newsize, false);
				break;

			case FILE_ACTION_CREATE:
				FUNC1(entry);
				break;

			case FILE_ACTION_REMOVE:
				FUNC3(entry);
				break;
		}
	}

	FUNC0();
}