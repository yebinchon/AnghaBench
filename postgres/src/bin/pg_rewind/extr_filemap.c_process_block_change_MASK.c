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
struct TYPE_6__ {int /*<<< orphan*/  narray; int /*<<< orphan*/  array; } ;
typedef  TYPE_1__ filemap_t ;
struct TYPE_7__ {char* path; int action; int newsize; int oldsize; int /*<<< orphan*/  pagemap; int /*<<< orphan*/  isrelfile; } ;
typedef  TYPE_2__ file_entry_t ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BLCKSZ ; 
#define  FILE_ACTION_COPY 133 
#define  FILE_ACTION_COPY_TAIL 132 
#define  FILE_ACTION_CREATE 131 
#define  FILE_ACTION_NONE 130 
#define  FILE_ACTION_REMOVE 129 
#define  FILE_ACTION_TRUNCATE 128 
 int RELSEG_SIZE ; 
 TYPE_2__** FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* filemap ; 
 int /*<<< orphan*/  path_cmp ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void
FUNC6(ForkNumber forknum, RelFileNode rnode, BlockNumber blkno)
{
	char	   *path;
	file_entry_t key;
	file_entry_t *key_ptr;
	file_entry_t *entry;
	BlockNumber blkno_inseg;
	int			segno;
	filemap_t  *map = filemap;
	file_entry_t **e;

	FUNC0(map->array);

	segno = blkno / RELSEG_SIZE;
	blkno_inseg = blkno % RELSEG_SIZE;

	path = FUNC3(rnode, forknum, segno);

	key.path = (char *) path;
	key_ptr = &key;

	e = FUNC1(&key_ptr, map->array, map->narray, sizeof(file_entry_t *),
				path_cmp);
	if (e)
		entry = *e;
	else
		entry = NULL;
	FUNC4(path);

	if (entry)
	{
		FUNC0(entry->isrelfile);

		switch (entry->action)
		{
			case FILE_ACTION_NONE:
			case FILE_ACTION_TRUNCATE:
				/* skip if we're truncating away the modified block anyway */
				if ((blkno_inseg + 1) * BLCKSZ <= entry->newsize)
					FUNC2(&entry->pagemap, blkno_inseg);
				break;

			case FILE_ACTION_COPY_TAIL:

				/*
				 * skip the modified block if it is part of the "tail" that
				 * we're copying anyway.
				 */
				if ((blkno_inseg + 1) * BLCKSZ <= entry->oldsize)
					FUNC2(&entry->pagemap, blkno_inseg);
				break;

			case FILE_ACTION_COPY:
			case FILE_ACTION_REMOVE:
				break;

			case FILE_ACTION_CREATE:
				FUNC5("unexpected page modification for directory or symbolic link \"%s\"", entry->path);
		}
	}
	else
	{
		/*
		 * If we don't have any record of this file in the file map, it means
		 * that it's a relation that doesn't exist in the source system, and
		 * it was subsequently removed in the target system, too. We can
		 * safely ignore it.
		 */
	}
}