
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef scalar_t__ LONG ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ Base64HeaderToBinaryA (int ,int ,int *,int *,int *,int *) ;
 scalar_t__ Base64ToBinaryA (int ,int ,int *,int *,int *,int *) ;
 scalar_t__ DecodeBinaryToBinaryA (int ,int ,int *,int *,int *,int *) ;
 scalar_t__ ERROR_INVALID_DATA ;

__attribute__((used)) static LONG DecodeAnyA(LPCSTR pszString, DWORD cchString,
 BYTE *pbBinary, DWORD *pcbBinary, DWORD *pdwSkip, DWORD *pdwFlags)
{
    LONG ret;

    ret = Base64HeaderToBinaryA(pszString, cchString, pbBinary, pcbBinary,
     pdwSkip, pdwFlags);
    if (ret == ERROR_INVALID_DATA)
        ret = Base64ToBinaryA(pszString, cchString, pbBinary, pcbBinary,
         pdwSkip, pdwFlags);
    if (ret == ERROR_INVALID_DATA)
        ret = DecodeBinaryToBinaryA(pszString, cchString, pbBinary, pcbBinary,
         pdwSkip, pdwFlags);
    return ret;
}
