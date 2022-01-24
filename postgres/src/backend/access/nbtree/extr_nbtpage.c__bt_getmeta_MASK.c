#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ btm_magic; scalar_t__ btm_version; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BTPageOpaque ;
typedef  TYPE_1__ BTMetaPageData ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BTREE_MAGIC ; 
 scalar_t__ BTREE_MIN_VERSION ; 
 scalar_t__ BTREE_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static BTMetaPageData *
FUNC8(Relation rel, Buffer metabuf)
{
	Page		metapg;
	BTPageOpaque metaopaque;
	BTMetaPageData *metad;

	metapg = FUNC1(metabuf);
	metaopaque = (BTPageOpaque) FUNC3(metapg);
	metad = FUNC0(metapg);

	/* sanity-check the metapage */
	if (!FUNC2(metaopaque) ||
		metad->btm_magic != BTREE_MAGIC)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INDEX_CORRUPTED),
				 FUNC7("index \"%s\" is not a btree",
						FUNC4(rel))));

	if (metad->btm_version < BTREE_MIN_VERSION ||
		metad->btm_version > BTREE_VERSION)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INDEX_CORRUPTED),
				 FUNC7("version mismatch in index \"%s\": file version %d, "
						"current version %d, minimal supported version %d",
						FUNC4(rel),
						metad->btm_version, BTREE_VERSION, BTREE_MIN_VERSION)));

	return metad;
}