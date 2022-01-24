#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ntuples; } ;
typedef  TYPE_1__ xl_hash_update_meta_page ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_10__ {int /*<<< orphan*/  hashm_ntuples; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_3__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(XLogReaderState *record)
{
	HashMetaPage metap;
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_hash_update_meta_page *xldata = (xl_hash_update_meta_page *) FUNC7(record);
	Buffer		metabuf;
	Page		page;

	if (FUNC6(record, 0, &metabuf) == BLK_NEEDS_REDO)
	{
		page = FUNC0(metabuf);
		metap = FUNC2(page);

		metap->hashm_ntuples = xldata->ntuples;

		FUNC4(page, lsn);
		FUNC3(metabuf);
	}
	if (FUNC1(metabuf))
		FUNC5(metabuf);
}