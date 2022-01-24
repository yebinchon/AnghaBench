#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32 ;
struct TYPE_2__ {int /*<<< orphan*/  hasho_page_id; void* hasho_flag; void* hasho_bucket; int /*<<< orphan*/  hasho_nextblkno; void* hasho_prevblkno; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* HashPageOpaque ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASHO_PAGE_ID ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(Buffer buf, uint32 max_bucket, uint32 num_bucket, uint32 flag,
			  bool initpage)
{
	HashPageOpaque pageopaque;
	Page		page;

	page = FUNC0(buf);

	/* initialize the page */
	if (initpage)
		FUNC3(page, FUNC1(buf));

	pageopaque = (HashPageOpaque) FUNC2(page);

	/*
	 * Set hasho_prevblkno with current hashm_maxbucket. This value will be
	 * used to validate cached HashMetaPageData. See
	 * _hash_getbucketbuf_from_hashkey().
	 */
	pageopaque->hasho_prevblkno = max_bucket;
	pageopaque->hasho_nextblkno = InvalidBlockNumber;
	pageopaque->hasho_bucket = num_bucket;
	pageopaque->hasho_flag = flag;
	pageopaque->hasho_page_id = HASHO_PAGE_ID;
}