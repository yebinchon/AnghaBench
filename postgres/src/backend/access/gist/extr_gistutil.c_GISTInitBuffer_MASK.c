#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  gist_page_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  rightlink; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  GISTPageOpaqueData ;
typedef  TYPE_1__* GISTPageOpaque ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIST_PAGE_ID ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(Buffer b, uint32 f)
{
	GISTPageOpaque opaque;
	Page		page;
	Size		pageSize;

	pageSize = FUNC1(b);
	page = FUNC0(b);
	FUNC3(page, pageSize, sizeof(GISTPageOpaqueData));

	opaque = FUNC2(page);
	/* page was already zeroed by PageInit, so this is not needed: */
	/* memset(&(opaque->nsn), 0, sizeof(GistNSN)); */
	opaque->rightlink = InvalidBlockNumber;
	opaque->flags = f;
	opaque->gist_page_id = GIST_PAGE_ID;
}