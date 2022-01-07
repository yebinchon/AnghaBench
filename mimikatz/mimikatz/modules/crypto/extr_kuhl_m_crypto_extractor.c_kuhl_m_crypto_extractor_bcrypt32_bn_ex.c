
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tag; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PKIWI_BCRYPT_BIGNUM_Header ;
typedef scalar_t__ PBYTE ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD32 ;


 int kprintf (char*,...) ;
 int kuhl_m_crypto_extractor_bcrypt32_bn (TYPE_1__*) ;

void kuhl_m_crypto_extractor_bcrypt32_bn_ex(PVOID curBase, DWORD32 remBase, DWORD32 remAddr, LPCWSTR num)
{
 PKIWI_BCRYPT_BIGNUM_Header bn;
 if(remAddr)
 {
  bn = (PKIWI_BCRYPT_BIGNUM_Header) ((PBYTE) curBase + (remAddr - remBase));
  if(bn->tag)
  {
   kprintf(L"%s: ", num);
   kuhl_m_crypto_extractor_bcrypt32_bn(bn);
   kprintf(L"\n");
  }
 }
}
