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
struct detail_data {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {scalar_t__ pwszName; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pszObjId; } ;
typedef  TYPE_1__* PCERT_EXTENSION ;
typedef  TYPE_2__* PCCRYPT_OID_INFO ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_OID_INFO_OID_KEY ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct detail_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  field_format_detailed_extension ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(HWND hwnd, struct detail_data *data,
 PCERT_EXTENSION ext)
{
    PCCRYPT_OID_INFO oidInfo = FUNC0(CRYPT_OID_INFO_OID_KEY,
     ext->pszObjId, 0);
    LPWSTR val = FUNC5(ext, 0);

    if (oidInfo)
        FUNC4(hwnd, data, (LPWSTR)oidInfo->pwszName,
         val, field_format_detailed_extension, ext);
    else
    {
        DWORD len = FUNC6(ext->pszObjId);
        LPWSTR oidW = FUNC2(FUNC1(), 0, (len + 1) * sizeof(WCHAR));

        if (oidW)
        {
            DWORD i;

            for (i = 0; i <= len; i++)
                oidW[i] = ext->pszObjId[i];
            FUNC4(hwnd, data, oidW, val,
             field_format_detailed_extension, ext);
            FUNC3(FUNC1(), 0, oidW);
        }
    }
    FUNC3(FUNC1(), 0, val);
}