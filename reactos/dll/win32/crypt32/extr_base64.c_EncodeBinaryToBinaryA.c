
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPSTR ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRUE ;
 int memcpy (scalar_t__,int const*,scalar_t__) ;

__attribute__((used)) static BOOL EncodeBinaryToBinaryA(const BYTE *pbBinary,
 DWORD cbBinary, DWORD dwFlags, LPSTR pszString, DWORD *pcchString)
{
    BOOL ret = TRUE;

    if (pszString)
    {
        if (*pcchString < cbBinary)
        {
            SetLastError(ERROR_INSUFFICIENT_BUFFER);
            ret = FALSE;
        }
        else if (cbBinary)
            memcpy(pszString, pbBinary, cbBinary);
    }
    else
        *pcchString = cbBinary;

    return ret;
}
