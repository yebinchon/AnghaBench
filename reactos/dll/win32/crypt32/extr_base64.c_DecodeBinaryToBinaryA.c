
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int LONG ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_SUCCESS ;
 int memcpy (int *,int ,scalar_t__) ;

__attribute__((used)) static LONG DecodeBinaryToBinaryA(LPCSTR pszString, DWORD cchString,
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
            memcpy(pbBinary, pszString, cchString);
        *pcbBinary = cchString;
    }
    return ret;
}
