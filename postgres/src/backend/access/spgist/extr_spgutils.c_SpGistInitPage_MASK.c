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
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_4__ {int /*<<< orphan*/  spgist_page_id; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  SpGistPageOpaqueData ;
typedef  TYPE_1__* SpGistPageOpaque ;
typedef  int /*<<< orphan*/  Page ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPGIST_PAGE_ID ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(Page page, uint16 f)
{
	SpGistPageOpaque opaque;

	FUNC1(page, BLCKSZ, FUNC0(sizeof(SpGistPageOpaqueData)));
	opaque = FUNC2(page);
	FUNC3(opaque, 0, sizeof(SpGistPageOpaqueData));
	opaque->flags = f;
	opaque->spgist_page_id = SPGIST_PAGE_ID;
}