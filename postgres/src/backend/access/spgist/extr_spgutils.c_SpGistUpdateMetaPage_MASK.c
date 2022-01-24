#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int pd_lower; } ;
struct TYPE_10__ {scalar_t__ rd_amcache; } ;
struct TYPE_9__ {int /*<<< orphan*/  lastUsedPages; } ;
struct TYPE_8__ {int /*<<< orphan*/  lastUsedPages; } ;
typedef  TYPE_1__ SpGistMetaPageData ;
typedef  TYPE_2__ SpGistCache ;
typedef  TYPE_3__* Relation ;
typedef  TYPE_4__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPGIST_METAPAGE_BLKNO ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(Relation index)
{
	SpGistCache *cache = (SpGistCache *) index->rd_amcache;

	if (cache != NULL)
	{
		Buffer		metabuffer;

		metabuffer = FUNC3(index, SPGIST_METAPAGE_BLKNO);

		if (FUNC1(metabuffer))
		{
			Page		metapage = FUNC0(metabuffer);
			SpGistMetaPageData *metadata = FUNC5(metapage);

			metadata->lastUsedPages = cache->lastUsedPages;

			/*
			 * Set pd_lower just past the end of the metadata.  This is
			 * essential, because without doing so, metadata will be lost if
			 * xlog.c compresses the page.  (We must do this here because
			 * pre-v11 versions of PG did not set the metapage's pd_lower
			 * correctly, so a pg_upgraded index might contain the wrong
			 * value.)
			 */
			((PageHeader) metapage)->pd_lower =
				((char *) metadata + sizeof(SpGistMetaPageData)) - (char *) metapage;

			FUNC2(metabuffer);
			FUNC6(metabuffer);
		}
		else
		{
			FUNC4(metabuffer);
		}
	}
}