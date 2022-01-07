
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int LONG ;
typedef int DWORD ;
typedef int BYTE ;


 int Base64ToBinary (int ,int ,int ,int *,int *,int *,int *) ;
 int TRUE ;

__attribute__((used)) static LONG Base64ToBinaryW(LPCWSTR pszString, DWORD cchString,
 BYTE *pbBinary, DWORD *pcbBinary, DWORD *pdwSkip, DWORD *pdwFlags)
{
    return Base64ToBinary(pszString, TRUE, cchString, pbBinary, pcbBinary, pdwSkip, pdwFlags);
}
