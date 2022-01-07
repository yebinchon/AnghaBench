
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int LONG ;
typedef int DWORD ;
typedef int BYTE ;


 int Base64WithHeaderAndTrailerToBinaryA (int ,int ,int *,int *,int *) ;
 int CRYPT_STRING_BASE64X509CRLHEADER ;

__attribute__((used)) static LONG Base64X509HeaderToBinaryA(LPCSTR pszString, DWORD cchString,
 BYTE *pbBinary, DWORD *pcbBinary, DWORD *pdwSkip, DWORD *pdwFlags)
{
    LONG ret = Base64WithHeaderAndTrailerToBinaryA(pszString, cchString,
     pbBinary, pcbBinary, pdwSkip);

    if (!ret && pdwFlags)
        *pdwFlags = CRYPT_STRING_BASE64X509CRLHEADER;
    return ret;
}
