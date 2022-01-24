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
struct TYPE_3__ {int cAltEntry; int /*<<< orphan*/ * rgAltEntry; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;
typedef  TYPE_1__ CERT_ALT_NAME_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CRYPT_FORMAT_STR_MULTI_LINE ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  commaSpace ; 
 int /*<<< orphan*/  crlf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4(DWORD dwFormatStrType, DWORD indentLevel,
 const CERT_ALT_NAME_INFO *name, LPWSTR str, DWORD *pcbStr)
{
    DWORD i, size, bytesNeeded = 0;
    BOOL ret = TRUE;
    LPCWSTR sep;
    DWORD sepLen;

    if (dwFormatStrType & CRYPT_FORMAT_STR_MULTI_LINE)
    {
        sep = crlf;
        sepLen = FUNC3(crlf) * sizeof(WCHAR);
    }
    else
    {
        sep = commaSpace;
        sepLen = FUNC3(commaSpace) * sizeof(WCHAR);
    }

    for (i = 0; ret && i < name->cAltEntry; i++)
    {
        ret = FUNC0(dwFormatStrType, indentLevel,
         &name->rgAltEntry[i], NULL, &size);
        if (ret)
        {
            bytesNeeded += size - sizeof(WCHAR);
            if (i < name->cAltEntry - 1)
                bytesNeeded += sepLen;
        }
    }
    if (ret)
    {
        bytesNeeded += sizeof(WCHAR);
        if (!str)
            *pcbStr = bytesNeeded;
        else if (*pcbStr < bytesNeeded)
        {
            *pcbStr = bytesNeeded;
            FUNC1(ERROR_MORE_DATA);
            ret = FALSE;
        }
        else
        {
            *pcbStr = bytesNeeded;
            for (i = 0; ret && i < name->cAltEntry; i++)
            {
                ret = FUNC0(dwFormatStrType, indentLevel,
                 &name->rgAltEntry[i], str, &size);
                if (ret)
                {
                    str += size / sizeof(WCHAR) - 1;
                    if (i < name->cAltEntry - 1)
                    {
                        FUNC2(str, sep);
                        str += sepLen / sizeof(WCHAR);
                    }
                }
            }
        }
    }
    return ret;
}