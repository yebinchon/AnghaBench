#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_8__ {int /*<<< orphan*/  new_tid; int /*<<< orphan*/  new_node; int /*<<< orphan*/  old_tid; int /*<<< orphan*/  old_node; } ;
struct TYPE_7__ {scalar_t__ cmin; scalar_t__ cmax; int /*<<< orphan*/  combocid; } ;
struct TYPE_6__ {int /*<<< orphan*/  tid; int /*<<< orphan*/  relnode; } ;
typedef  TYPE_1__ ReorderBufferTupleCidKey ;
typedef  TYPE_2__ ReorderBufferTupleCidEnt ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ LogicalRewriteMappingData ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 scalar_t__ InvalidCommandId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int FUNC3 (char*,int) ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  WAIT_EVENT_REORDER_LOGICAL_MAPPING_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char const*) ; 

__attribute__((used)) static void
FUNC13(HTAB *tuplecid_data, Oid relid, const char *fname)
{
	char		path[MAXPGPATH];
	int			fd;
	int			readBytes;
	LogicalRewriteMappingData map;

	FUNC12(path, "pg_logical/mappings/%s", fname);
	fd = FUNC3(path, O_RDONLY | PG_BINARY);
	if (fd < 0)
		FUNC4(ERROR,
				(FUNC5(),
				 FUNC6("could not open file \"%s\": %m", path)));

	while (true)
	{
		ReorderBufferTupleCidKey key;
		ReorderBufferTupleCidEnt *ent;
		ReorderBufferTupleCidEnt *new_ent;
		bool		found;

		/* be careful about padding */
		FUNC8(&key, 0, sizeof(ReorderBufferTupleCidKey));

		/* read all mappings till the end of the file */
		FUNC10(WAIT_EVENT_REORDER_LOGICAL_MAPPING_READ);
		readBytes = FUNC11(fd, &map, sizeof(LogicalRewriteMappingData));
		FUNC9();

		if (readBytes < 0)
			FUNC4(ERROR,
					(FUNC5(),
					 FUNC6("could not read file \"%s\": %m",
							path)));
		else if (readBytes == 0)	/* EOF */
			break;
		else if (readBytes != sizeof(LogicalRewriteMappingData))
			FUNC4(ERROR,
					(FUNC5(),
					 FUNC6("could not read from file \"%s\": read %d instead of %d bytes",
							path, readBytes,
							(int32) sizeof(LogicalRewriteMappingData))));

		key.relnode = map.old_node;
		FUNC2(&map.old_tid,
						&key.tid);


		ent = (ReorderBufferTupleCidEnt *)
			FUNC7(tuplecid_data,
						(void *) &key,
						HASH_FIND,
						NULL);

		/* no existing mapping, no need to update */
		if (!ent)
			continue;

		key.relnode = map.new_node;
		FUNC2(&map.new_tid,
						&key.tid);

		new_ent = (ReorderBufferTupleCidEnt *)
			FUNC7(tuplecid_data,
						(void *) &key,
						HASH_ENTER,
						&found);

		if (found)
		{
			/*
			 * Make sure the existing mapping makes sense. We sometime update
			 * old records that did not yet have a cmax (e.g. pg_class' own
			 * entry while rewriting it) during rewrites, so allow that.
			 */
			FUNC0(ent->cmin == InvalidCommandId || ent->cmin == new_ent->cmin);
			FUNC0(ent->cmax == InvalidCommandId || ent->cmax == new_ent->cmax);
		}
		else
		{
			/* update mapping */
			new_ent->cmin = ent->cmin;
			new_ent->cmax = ent->cmax;
			new_ent->combocid = ent->combocid;
		}
	}

	if (FUNC1(fd) != 0)
		FUNC4(ERROR,
				(FUNC5(),
				 FUNC6("could not close file \"%s\": %m", path)));
}