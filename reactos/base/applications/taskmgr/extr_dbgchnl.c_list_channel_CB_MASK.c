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
typedef  int /*<<< orphan*/  lvi ;
typedef  int WCHAR ;
struct TYPE_4__ {int* pszText; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ LVITEM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  LVIF_TEXT ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int     FUNC3(HANDLE hProcess, void* addr, WCHAR* buffer, void* user)
{
    int     j;
    WCHAR   val[2];
    LVITEM  lvi;
    int     index;
    HWND    hChannelLV = (HWND)user;

    FUNC2(&lvi, 0, sizeof(lvi));

    lvi.mask = LVIF_TEXT;
    lvi.pszText = buffer + 1;

    index = FUNC0(hChannelLV, &lvi);
    if (index == -1) return 0;

    val[1] = L'\0';
    for (j = 0; j < 4; j++)
    {
        val[0] = (buffer[0] & (1 << j)) ? L'x' : L' ';
        FUNC1(hChannelLV, index, j + 1, val);
    }
    return 1;
}