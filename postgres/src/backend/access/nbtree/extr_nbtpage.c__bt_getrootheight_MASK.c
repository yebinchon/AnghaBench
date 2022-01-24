#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ btm_root; scalar_t__ btm_magic; scalar_t__ btm_version; scalar_t__ btm_fastroot; int btm_fastlevel; } ;
struct TYPE_9__ {int /*<<< orphan*/ * rd_amcache; int /*<<< orphan*/  rd_indexcxt; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_2__ BTMetaPageData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTREE_MAGIC ; 
 int /*<<< orphan*/  BTREE_METAPAGE ; 
 scalar_t__ BTREE_MIN_VERSION ; 
 scalar_t__ BTREE_VERSION ; 
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ P_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

int
FUNC6(Relation rel)
{
	BTMetaPageData *metad;

	if (rel->rd_amcache == NULL)
	{
		Buffer		metabuf;

		metabuf = FUNC2(rel, BTREE_METAPAGE, BT_READ);
		metad = FUNC3(rel, metabuf);

		/*
		 * If there's no root page yet, _bt_getroot() doesn't expect a cache
		 * to be made, so just stop here and report the index height is zero.
		 * (XXX perhaps _bt_getroot() should be changed to allow this case.)
		 */
		if (metad->btm_root == P_NONE)
		{
			FUNC4(rel, metabuf);
			return 0;
		}

		/*
		 * Cache the metapage data for next time
		 */
		rel->rd_amcache = FUNC1(rel->rd_indexcxt,
											 sizeof(BTMetaPageData));
		FUNC5(rel->rd_amcache, metad, sizeof(BTMetaPageData));
		FUNC4(rel, metabuf);
	}

	/* Get cached page */
	metad = (BTMetaPageData *) rel->rd_amcache;
	/* We shouldn't have cached it if any of these fail */
	FUNC0(metad->btm_magic == BTREE_MAGIC);
	FUNC0(metad->btm_version >= BTREE_MIN_VERSION);
	FUNC0(metad->btm_version <= BTREE_VERSION);
	FUNC0(metad->btm_fastroot != P_NONE);

	return metad->btm_fastlevel;
}