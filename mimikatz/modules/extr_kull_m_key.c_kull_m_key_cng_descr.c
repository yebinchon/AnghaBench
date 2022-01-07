
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int dwNameLen; char* pName; scalar_t__ pPrivateKey; scalar_t__ dwPrivateKeyLen; scalar_t__ pPrivateProperties; scalar_t__ dwPrivatePropertiesLen; int cbPublicProperties; int pPublicProperties; int unkArray; int dwPublicPropertiesLen; int type; int unk; int dwVersion; } ;
typedef TYPE_1__* PKULL_M_KEY_CNG_BLOB ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_dpapi_blob_quick_descr (int,scalar_t__) ;
 int kull_m_key_cng_properties_descr (int,int ,int ) ;
 int kull_m_string_wprintf_hex (int ,int,int ) ;

void kull_m_key_cng_descr(DWORD level, PKULL_M_KEY_CNG_BLOB cngKey)
{
 kprintf(L"%*s" L"**KEY (cng)**\n", level << 1, L"");
 if(cngKey)
 {
  kprintf(L"%*s" L"  dwVersion             : %08x - %u\n", level << 1, L"", cngKey->dwVersion, cngKey->dwVersion);
  kprintf(L"%*s" L"  unk                   : %08x - %u\n", level << 1, L"", cngKey->unk, cngKey->unk);
  kprintf(L"%*s" L"  dwNameLen             : %08x - %u\n", level << 1, L"", cngKey->dwNameLen, cngKey->dwNameLen);
  kprintf(L"%*s" L"  type                  : %08x - %u\n", level << 1, L"", cngKey->type, cngKey->type);
  kprintf(L"%*s" L"  dwPublicPropertiesLen : %08x - %u\n", level << 1, L"", cngKey->dwPublicPropertiesLen, cngKey->dwPublicPropertiesLen);
  kprintf(L"%*s" L"  dwPrivatePropertiesLen: %08x - %u\n", level << 1, L"", cngKey->dwPrivatePropertiesLen, cngKey->dwPrivatePropertiesLen);
  kprintf(L"%*s" L"  dwPrivateKeyLen       : %08x - %u\n", level << 1, L"", cngKey->dwPrivateKeyLen, cngKey->dwPrivateKeyLen);
  kprintf(L"%*s" L"  unkArray[16]          : ", level << 1, L""); kull_m_string_wprintf_hex(cngKey->unkArray, sizeof(cngKey->unkArray), 0); kprintf(L"\n");
  kprintf(L"%*s" L"  pName                 : ", level << 1, L""); kprintf(L"%.*s\n", cngKey->dwNameLen / sizeof(wchar_t), cngKey->pName);
  kprintf(L"%*s" L"  pPublicProperties     : ", level << 1, L""); kull_m_key_cng_properties_descr(level + 1, cngKey->pPublicProperties, cngKey->cbPublicProperties);
  kprintf(L"%*s" L"  pPrivateProperties    :\n", level << 1, L"");
  if(cngKey->pPrivateProperties && cngKey->dwPrivatePropertiesLen)
   kull_m_dpapi_blob_quick_descr(level + 1, cngKey->pPrivateProperties);
  kprintf(L"%*s" L"  pPrivateKey           :\n", level << 1, L"");
  if(cngKey->pPrivateKey && cngKey->dwPrivateKeyLen)
   kull_m_dpapi_blob_quick_descr(level + 1, cngKey->pPrivateKey);
 }
}
