#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  GinPlaceToPageRC ;
typedef  int /*<<< orphan*/  GinBtreeStack ;
typedef  int /*<<< orphan*/  GinBtree ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GinPlaceToPageRC
FUNC6(GinBtree btree, Buffer buf, GinBtreeStack *stack,
					 void *insertdata, BlockNumber updateblkno,
					 void **ptp_workspace,
					 Page *newlpage, Page *newrpage)
{
	Page		page = FUNC1(buf);

	FUNC0(FUNC2(page));

	if (FUNC3(page))
		return FUNC5(btree, buf, stack, insertdata,
										ptp_workspace,
										newlpage, newrpage);
	else
		return FUNC4(btree, buf, stack,
											insertdata, updateblkno,
											ptp_workspace,
											newlpage, newrpage);
}