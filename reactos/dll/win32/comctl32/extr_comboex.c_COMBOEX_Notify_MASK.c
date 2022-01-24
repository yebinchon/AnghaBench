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
struct TYPE_6__ {int /*<<< orphan*/  hwndNotify; scalar_t__ NtfUnicode; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_5__ {int /*<<< orphan*/  code; int /*<<< orphan*/  hwndFrom; int /*<<< orphan*/  idFrom; } ;
typedef  TYPE_1__ NMHDR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  INT ;
typedef  TYPE_2__ COMBOEX_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_NOTIFY ; 

__attribute__((used)) static INT FUNC3 (const COMBOEX_INFO *infoPtr, INT code, NMHDR *hdr)
{
    hdr->idFrom = FUNC0 (infoPtr->hwndSelf);
    hdr->hwndFrom = infoPtr->hwndSelf;
    hdr->code = code;
    if (infoPtr->NtfUnicode)
	return FUNC2 (infoPtr->hwndNotify, WM_NOTIFY, 0, (LPARAM)hdr);
    else
	return FUNC1 (infoPtr->hwndNotify, WM_NOTIFY, 0, (LPARAM)hdr);
}