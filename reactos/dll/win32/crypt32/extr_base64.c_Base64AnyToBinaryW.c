
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ Base64HeaderToBinaryW (int ,int ,int *,int *,int *,int *) ;
 scalar_t__ Base64ToBinaryW (int ,int ,int *,int *,int *,int *) ;
 scalar_t__ ERROR_INVALID_DATA ;

__attribute__((used)) static LONG Base64AnyToBinaryW(LPCWSTR pszString, DWORD cchString,
 BYTE *pbBinary, DWORD *pcbBinary, DWORD *pdwSkip, DWORD *pdwFlags)
{
    LONG ret;

    ret = Base64HeaderToBinaryW(pszString, cchString, pbBinary, pcbBinary,
     pdwSkip, pdwFlags);
    if (ret == ERROR_INVALID_DATA)
        ret = Base64ToBinaryW(pszString, cchString, pbBinary, pcbBinary,
         pdwSkip, pdwFlags);
    return ret;
}
