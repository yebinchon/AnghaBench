
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ outputWhitening; int desKey; scalar_t__ inputWhitening; } ;
typedef int* PULONGLONG ;
typedef TYPE_1__* PCSYMCRYPT_NT5_DESX_EXPANDED_KEY ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ LPCBYTE ;


 int SymCryptDesGenCrypt2 (int *,scalar_t__,scalar_t__,int ) ;
 int TRUE ;

VOID SymCryptDesxEncrypt2(PCSYMCRYPT_NT5_DESX_EXPANDED_KEY pExpandedKey, LPCBYTE pbSrc, PBYTE pbDst)
{
 *(PULONGLONG) pbDst = *(PULONGLONG) pbSrc ^ *(PULONGLONG) pExpandedKey->inputWhitening;
 SymCryptDesGenCrypt2(&pExpandedKey->desKey, pbDst, pbDst, TRUE);
 *(PULONGLONG) pbDst ^= *(PULONGLONG) pExpandedKey->outputWhitening;
}
