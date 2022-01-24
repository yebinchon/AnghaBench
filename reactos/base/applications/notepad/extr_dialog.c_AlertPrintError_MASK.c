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
struct TYPE_2__ {scalar_t__* szFileName; int /*<<< orphan*/  hMainWnd; int /*<<< orphan*/  hInstance; } ;
typedef  scalar_t__ TCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 TYPE_1__ Globals ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int MAX_STRING_LEN ; 
 int MB_ICONEXCLAMATION ; 
 int MB_OK ; 
 int /*<<< orphan*/  STRING_PRINTERROR ; 
 int /*<<< orphan*/  STRING_UNTITLED ; 

__attribute__((used)) static void FUNC3(void)
{
    TCHAR szUntitled[MAX_STRING_LEN];

    FUNC2(Globals.hInstance, STRING_UNTITLED, szUntitled, FUNC0(szUntitled));

    FUNC1(Globals.hMainWnd, STRING_PRINTERROR,
                        Globals.szFileName[0] ? Globals.szFileName : szUntitled,
                        MB_ICONEXCLAMATION | MB_OK);
}