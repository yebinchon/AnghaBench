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
struct TYPE_5__ {scalar_t__ hashm_magic; scalar_t__ hashm_version; } ;
struct TYPE_4__ {int hasho_flag; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  HashPageOpaqueData ;
typedef  TYPE_1__* HashPageOpaque ;
typedef  TYPE_2__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ HASH_MAGIC ; 
 scalar_t__ HASH_VERSION ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int LH_META_PAGE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,...) ; 

void
FUNC12(Relation rel, Buffer buf, int flags)
{
	Page		page = FUNC1(buf);

	/*
	 * ReadBuffer verifies that every newly-read page passes
	 * PageHeaderIsValid, which means it either contains a reasonably sane
	 * page header or is all-zero.  We have to defend against the all-zero
	 * case, however.
	 */
	if (FUNC6(page))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INDEX_CORRUPTED),
				 FUNC11("index \"%s\" contains unexpected zero page at block %u",
						FUNC7(rel),
						FUNC0(buf)),
				 FUNC10("Please REINDEX it.")));

	/*
	 * Additionally check that the special area looks sane.
	 */
	if (FUNC5(page) != FUNC3(sizeof(HashPageOpaqueData)))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INDEX_CORRUPTED),
				 FUNC11("index \"%s\" contains corrupted page at block %u",
						FUNC7(rel),
						FUNC0(buf)),
				 FUNC10("Please REINDEX it.")));

	if (flags)
	{
		HashPageOpaque opaque = (HashPageOpaque) FUNC4(page);

		if ((opaque->hasho_flag & flags) == 0)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INDEX_CORRUPTED),
					 FUNC11("index \"%s\" contains corrupted page at block %u",
							FUNC7(rel),
							FUNC0(buf)),
					 FUNC10("Please REINDEX it.")));
	}

	/*
	 * When checking the metapage, also verify magic number and version.
	 */
	if (flags == LH_META_PAGE)
	{
		HashMetaPage metap = FUNC2(page);

		if (metap->hashm_magic != HASH_MAGIC)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INDEX_CORRUPTED),
					 FUNC11("index \"%s\" is not a hash index",
							FUNC7(rel))));

		if (metap->hashm_version != HASH_VERSION)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INDEX_CORRUPTED),
					 FUNC11("index \"%s\" has wrong hash version",
							FUNC7(rel)),
					 FUNC10("Please REINDEX it.")));
	}
}