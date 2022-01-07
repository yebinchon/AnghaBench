
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int LONG ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_SUCCESS ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static LONG DecodeBinaryToBinaryW(LPCWSTR pszString, DWORD cchString,
 BYTE *pbBinary, DWORD *pcbBinary, DWORD *pdwSkip, DWORD *pdwFlags)
{
    LONG ret = ERROR_SUCCESS;

    if (*pcbBinary < cchString)
    {
        if (!pbBinary)
            *pcbBinary = cchString;
        else
        {
            ret = ERROR_INSUFFICIENT_BUFFER;
            *pcbBinary = cchString;
        }
    }
    else
    {
        if (cchString)
            memcpy(pbBinary, pszString, cchString * sizeof(WCHAR));
        *pcbBinary = cchString * sizeof(WCHAR);
    }
    return ret;
}
