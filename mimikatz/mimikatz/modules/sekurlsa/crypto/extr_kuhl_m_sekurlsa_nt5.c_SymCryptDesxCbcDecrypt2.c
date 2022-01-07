
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int SIZE_T ;
typedef int * PULONGLONG ;
typedef int PCSYMCRYPT_NT5_DESX_EXPANDED_KEY ;
typedef int * PBYTE ;
typedef int * LPCBYTE ;
typedef int BYTE ;


 int RtlCopyMemory (int *,int *,int) ;
 int SymCryptDesxDecrypt2 (int ,int *,int *) ;

VOID SymCryptDesxCbcDecrypt2(PCSYMCRYPT_NT5_DESX_EXPANDED_KEY pExpandedKey, PBYTE pbChainingValue, LPCBYTE pbSrc, PBYTE pbDst, SIZE_T cbData)
{
 LPCBYTE pbSrcEnd;
 BYTE buf[8];
 for(pbSrcEnd = &pbSrc[cbData & ~7]; pbSrc < pbSrcEnd; pbDst += 8, pbSrc += 8)
 {
  RtlCopyMemory(buf, pbSrc, 8);
  SymCryptDesxDecrypt2(pExpandedKey, pbSrc, pbDst);
  *(PULONGLONG) pbDst ^= *(PULONGLONG) pbChainingValue;
  RtlCopyMemory(pbChainingValue, buf, 8);
 }
}
