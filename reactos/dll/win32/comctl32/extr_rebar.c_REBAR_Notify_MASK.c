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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  idFrom; int /*<<< orphan*/  code; int /*<<< orphan*/  hwndFrom; } ;
struct TYPE_6__ {scalar_t__ bUnicode; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ NMHDR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WM_NOTIFY ; 

__attribute__((used)) static INT
FUNC4 (NMHDR *nmhdr, const REBAR_INFO *infoPtr, UINT code)
{
    HWND parent;

    parent = FUNC1 (infoPtr);
    nmhdr->idFrom = FUNC0 (infoPtr->hwndSelf);
    nmhdr->hwndFrom = infoPtr->hwndSelf;
    nmhdr->code = code;

    FUNC3("window %p, code=%08x, via %s\n", parent, code, (infoPtr->bUnicode)?"Unicode":"ANSI");

    return FUNC2(parent, WM_NOTIFY, nmhdr->idFrom, (LPARAM)nmhdr);
}