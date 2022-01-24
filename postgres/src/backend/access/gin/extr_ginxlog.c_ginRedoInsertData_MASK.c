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
typedef  int /*<<< orphan*/  ginxlogRecompressDataLeaf ;
struct TYPE_2__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  newitem; } ;
typedef  TYPE_1__ ginxlogInsertDataInternal ;
typedef  int /*<<< orphan*/  PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(Buffer buffer, bool isLeaf, BlockNumber rightblkno, void *rdata)
{
	Page		page = FUNC1(buffer);

	if (isLeaf)
	{
		ginxlogRecompressDataLeaf *data = (ginxlogRecompressDataLeaf *) rdata;

		FUNC0(FUNC4(page));

		FUNC6(page, data);
	}
	else
	{
		ginxlogInsertDataInternal *data = (ginxlogInsertDataInternal *) rdata;
		PostingItem *oldpitem;

		FUNC0(!FUNC4(page));

		/* update link to right page after split */
		oldpitem = FUNC3(page, data->offset);
		FUNC5(oldpitem, rightblkno);

		FUNC2(page, &data->newitem, data->offset);
	}
}