#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_1__ TreeListData ;
struct TYPE_6__ {int /*<<< orphan*/  idFrom; int /*<<< orphan*/  hwndFrom; } ;
typedef  TYPE_2__ NMHDR ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_NOTIFY ; 

__attribute__((used)) static LRESULT FUNC3(TreeListData *pData, NMHDR	*pNotify) {

	pNotify->hwndFrom	= pData->hWnd;
	pNotify->idFrom		= FUNC1(pNotify->hwndFrom, GWL_ID);

	return FUNC2(FUNC0(pNotify->hwndFrom), WM_NOTIFY, pNotify->idFrom, (LPARAM)pNotify);
}