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
struct TYPE_6__ {int ndeleted; int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ ginxlogDeleteListPages ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  GinMetaPageData ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIN_DELETED ; 
 scalar_t__ GIN_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC12(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	ginxlogDeleteListPages *data = (ginxlogDeleteListPages *) FUNC10(record);
	Buffer		metabuffer;
	Page		metapage;
	int			i;

	metabuffer = FUNC9(record, 0);
	FUNC0(FUNC1(metabuffer) == GIN_METAPAGE_BLKNO);
	metapage = FUNC2(metabuffer);

	FUNC4(metabuffer);

	FUNC11(FUNC5(metapage), &data->metadata, sizeof(GinMetaPageData));
	FUNC7(metapage, lsn);
	FUNC6(metabuffer);

	/*
	 * In normal operation, shiftList() takes exclusive lock on all the
	 * pages-to-be-deleted simultaneously.  During replay, however, it should
	 * be all right to lock them one at a time.  This is dependent on the fact
	 * that we are deleting pages from the head of the list, and that readers
	 * share-lock the next page before releasing the one they are on. So we
	 * cannot get past a reader that is on, or due to visit, any page we are
	 * going to delete.  New incoming readers will block behind our metapage
	 * lock and then see a fully updated page list.
	 *
	 * No full-page images are taken of the deleted pages. Instead, they are
	 * re-initialized as empty, deleted pages. Their right-links don't need to
	 * be preserved, because no new readers can see the pages, as explained
	 * above.
	 */
	for (i = 0; i < data->ndeleted; i++)
	{
		Buffer		buffer;
		Page		page;

		buffer = FUNC9(record, i + 1);
		page = FUNC2(buffer);
		FUNC3(buffer, GIN_DELETED);

		FUNC7(page, lsn);
		FUNC6(buffer);

		FUNC8(buffer);
	}
	FUNC8(metabuffer);
}