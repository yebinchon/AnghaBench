#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hwndFrom; int /*<<< orphan*/  code; } ;
struct TYPE_5__ {TYPE_2__ hdr; scalar_t__ dwDrawStage; } ;
struct TYPE_7__ {TYPE_1__ nmcd; int /*<<< orphan*/  uDrawFlags; } ;
typedef  TYPE_3__ NMTTCUSTOMDRAW ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  WM_NOTIFY ; 

__attribute__((used)) static inline DWORD
FUNC3 (DWORD dwDrawStage, NMTTCUSTOMDRAW *lpnmttcd)
{
    LRESULT result;
    lpnmttcd->nmcd.dwDrawStage = dwDrawStage;

    FUNC2("Notifying stage %d, flags %x, id %x\n", lpnmttcd->nmcd.dwDrawStage,
          lpnmttcd->uDrawFlags, lpnmttcd->nmcd.hdr.code);

    result = FUNC1(FUNC0(lpnmttcd->nmcd.hdr.hwndFrom), WM_NOTIFY,
                          0, (LPARAM)lpnmttcd);

    FUNC2("Notify result %x\n", (unsigned int)result);

    return result;
}