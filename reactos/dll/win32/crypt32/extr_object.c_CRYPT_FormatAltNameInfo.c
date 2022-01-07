
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int cAltEntry; int * rgAltEntry; } ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef TYPE_1__ CERT_ALT_NAME_INFO ;
typedef scalar_t__ BOOL ;


 int CRYPT_FORMAT_STR_MULTI_LINE ;
 scalar_t__ CRYPT_FormatAltNameEntry (int,int,int *,int *,int*) ;
 int ERROR_MORE_DATA ;
 scalar_t__ FALSE ;
 int SetLastError (int ) ;
 scalar_t__ TRUE ;
 int commaSpace ;
 int crlf ;
 int strcpyW (int *,int ) ;
 int strlenW (int ) ;

__attribute__((used)) static BOOL CRYPT_FormatAltNameInfo(DWORD dwFormatStrType, DWORD indentLevel,
 const CERT_ALT_NAME_INFO *name, LPWSTR str, DWORD *pcbStr)
{
    DWORD i, size, bytesNeeded = 0;
    BOOL ret = TRUE;
    LPCWSTR sep;
    DWORD sepLen;

    if (dwFormatStrType & CRYPT_FORMAT_STR_MULTI_LINE)
    {
        sep = crlf;
        sepLen = strlenW(crlf) * sizeof(WCHAR);
    }
    else
    {
        sep = commaSpace;
        sepLen = strlenW(commaSpace) * sizeof(WCHAR);
    }

    for (i = 0; ret && i < name->cAltEntry; i++)
    {
        ret = CRYPT_FormatAltNameEntry(dwFormatStrType, indentLevel,
         &name->rgAltEntry[i], ((void*)0), &size);
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
            SetLastError(ERROR_MORE_DATA);
            ret = FALSE;
        }
        else
        {
            *pcbStr = bytesNeeded;
            for (i = 0; ret && i < name->cAltEntry; i++)
            {
                ret = CRYPT_FormatAltNameEntry(dwFormatStrType, indentLevel,
                 &name->rgAltEntry[i], str, &size);
                if (ret)
                {
                    str += size / sizeof(WCHAR) - 1;
                    if (i < name->cAltEntry - 1)
                    {
                        strcpyW(str, sep);
                        str += sepLen / sizeof(WCHAR);
                    }
                }
            }
        }
    }
    return ret;
}
