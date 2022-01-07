
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int SIZE_T ;
typedef int * PULONGLONG ;
typedef int PCSYMCRYPT_NT5_DESX_EXPANDED_KEY ;
typedef int PBYTE ;
typedef int * LPCBYTE ;


 int RtlCopyMemory (int,int,int) ;
 int SymCryptDesxEncrypt2 (int ,int,int) ;

VOID SymCryptDesxCbcEncrypt2(PCSYMCRYPT_NT5_DESX_EXPANDED_KEY pExpandedKey, PBYTE pbChainingValue, LPCBYTE pbSrc, PBYTE pbDst, SIZE_T cbData)
{
 LPCBYTE pbSrcEnd;
 for(pbSrcEnd = &pbSrc[cbData & ~7]; pbSrc < pbSrcEnd; pbSrc += 8, pbDst += 8)
 {
  *(PULONGLONG) pbChainingValue ^= *(PULONGLONG) pbSrc;
  SymCryptDesxEncrypt2(pExpandedKey, pbChainingValue, pbDst);
  RtlCopyMemory(pbChainingValue, pbDst, 8);
 }
}
