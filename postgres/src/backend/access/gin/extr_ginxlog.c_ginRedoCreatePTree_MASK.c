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
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ ginxlogCreatePostingTree ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int GIN_COMPRESSED ; 
 int GIN_DATA ; 
 int GIN_LEAF ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	ginxlogCreatePostingTree *data = (ginxlogCreatePostingTree *) FUNC8(record);
	char	   *ptr;
	Buffer		buffer;
	Page		page;

	buffer = FUNC7(record, 0);
	page = (Page) FUNC0(buffer);

	FUNC3(buffer, GIN_DATA | GIN_LEAF | GIN_COMPRESSED);

	ptr = FUNC8(record) + sizeof(ginxlogCreatePostingTree);

	/* Place page data */
	FUNC9(FUNC1(page), ptr, data->size);

	FUNC2(page, data->size);

	FUNC5(page, lsn);

	FUNC4(buffer);
	FUNC6(buffer);
}