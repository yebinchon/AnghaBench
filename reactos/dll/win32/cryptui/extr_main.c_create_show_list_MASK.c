#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct detail_data {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ WCHAR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CB_INSERTSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_DETAIL_SELECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int MAX_STRING_LEN ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInstance ; 
 TYPE_1__* listItems ; 

__attribute__((used)) static void FUNC4(HWND hwnd, struct detail_data *data)
{
    HWND cb = FUNC1(hwnd, IDC_DETAIL_SELECT);
    WCHAR buf[MAX_STRING_LEN];
    int i;

    for (i = 0; i < FUNC0(listItems); i++)
    {
        int index;

        FUNC2(hInstance, listItems[i].id, buf, FUNC0(buf));
        index = FUNC3(cb, CB_INSERTSTRING, -1, (LPARAM)buf);
        FUNC3(cb, CB_SETITEMDATA, index, (LPARAM)data);
    }
    FUNC3(cb, CB_SETCURSEL, 0, 0);
}