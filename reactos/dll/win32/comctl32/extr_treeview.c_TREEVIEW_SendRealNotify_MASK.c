#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  idFrom; int /*<<< orphan*/  code; int /*<<< orphan*/  hwndFrom; } ;
struct TYPE_7__ {int /*<<< orphan*/  hwndNotify; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ TREEVIEW_INFO ;
typedef  TYPE_2__ NMHDR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  WM_NOTIFY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline BOOL
FUNC4(const TREEVIEW_INFO *infoPtr, UINT code, NMHDR *hdr)
{
    FUNC2("code=%d, hdr=%p\n", code, hdr);

    hdr->hwndFrom = infoPtr->hwnd;
    hdr->idFrom = FUNC0(infoPtr->hwnd, GWLP_ID);
    hdr->code = FUNC3(infoPtr, code);

    return FUNC1(infoPtr->hwndNotify, WM_NOTIFY, hdr->idFrom, (LPARAM)hdr);
}