#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ pwszName; } ;
typedef  TYPE_1__* PCCRYPT_OID_INFO ;
typedef  scalar_t__* LPSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CB_INSERTSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  CRYPT_OID_INFO_OID_KEY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  IDC_MGR_PURPOSE_SELECTION ; 
 int /*<<< orphan*/  IDS_PURPOSE_ADVANCED ; 
 int /*<<< orphan*/  IDS_PURPOSE_ALL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_STRING_LEN ; 
 scalar_t__ PurposeFilterShowAdvanced ; 
 scalar_t__ PurposeFilterShowAll ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC7 () ; 
 int /*<<< orphan*/  hInstance ; 
 scalar_t__* FUNC8 (scalar_t__*,char) ; 

__attribute__((used)) static void FUNC9(HWND hwnd)
{
    HWND cb = FUNC2(hwnd, IDC_MGR_PURPOSE_SELECTION);
    WCHAR buf[MAX_STRING_LEN];
    LPSTR usages;
    int index;

    FUNC5(hInstance, IDS_PURPOSE_ALL, buf, FUNC0(buf));
    index = FUNC6(cb, CB_INSERTSTRING, -1, (LPARAM)buf);
    FUNC6(cb, CB_SETITEMDATA, index, (LPARAM)PurposeFilterShowAll);
    FUNC5(hInstance, IDS_PURPOSE_ADVANCED, buf, FUNC0(buf));
    index = FUNC6(cb, CB_INSERTSTRING, -1, (LPARAM)buf);
    FUNC6(cb, CB_SETITEMDATA, index, (LPARAM)PurposeFilterShowAdvanced);
    FUNC6(cb, CB_SETCURSEL, 0, 0);
    if ((usages = FUNC7()))
    {
        LPSTR ptr, comma;

        for (ptr = usages, comma = FUNC8(ptr, ','); ptr && *ptr;
         ptr = comma ? comma + 1 : NULL,
         comma = ptr ? FUNC8(ptr, ',') : NULL)
        {
            PCCRYPT_OID_INFO info;

            if (comma)
                *comma = 0;
            if ((info = FUNC1(CRYPT_OID_INFO_OID_KEY, ptr, 0)))
            {
                index = FUNC6(cb, CB_INSERTSTRING, 0,
                 (LPARAM)info->pwszName);
                FUNC6(cb, CB_SETITEMDATA, index, (LPARAM)info);
            }
        }
        FUNC4(FUNC3(), 0, usages);
    }
}