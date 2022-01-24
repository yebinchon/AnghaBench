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
struct TYPE_4__ {int /*<<< orphan*/  hashm_maxbucket; int /*<<< orphan*/  hashm_lowmask; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  Bucket ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_METAPAGE ; 
 int /*<<< orphan*/  HASH_READ ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LH_META_PAGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BlockNumber
FUNC6(Relation rel, Bucket old_bucket)
{
	Bucket		new_bucket;
	Buffer		metabuf;
	HashMetaPage metap;
	BlockNumber blkno;

	metabuf = FUNC4(rel, HASH_METAPAGE, HASH_READ, LH_META_PAGE);
	metap = FUNC2(FUNC1(metabuf));

	new_bucket = FUNC3(rel, old_bucket,
													metap->hashm_lowmask,
													metap->hashm_maxbucket);
	blkno = FUNC0(metap, new_bucket);

	FUNC5(rel, metabuf);

	return blkno;
}