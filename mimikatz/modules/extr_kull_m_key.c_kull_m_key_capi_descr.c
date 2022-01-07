
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pExExportFlag; scalar_t__ dwExExportFlagLen; scalar_t__ pExPrivateKey; scalar_t__ dwExPrivateKeyLen; int dwExPublicKeyLen; int pExPublicKey; scalar_t__ pSiExportFlag; scalar_t__ dwSiExportFlagLen; scalar_t__ pSiPrivateKey; scalar_t__ dwSiPrivateKeyLen; int dwSiPublicKeyLen; int pSiPublicKey; int dwHashLen; int pHash; int pName; int dwNameLen; int dwVersion; } ;
typedef TYPE_1__* PKULL_M_KEY_CAPI_BLOB ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_dpapi_blob_quick_descr (int,scalar_t__) ;
 int kull_m_string_wprintf_hex (int ,int ,int ) ;

void kull_m_key_capi_descr(DWORD level, PKULL_M_KEY_CAPI_BLOB capiKey)
{
 kprintf(L"%*s" L"**KEY (capi)**\n", level << 1, L"");
 if(capiKey)
 {
  kprintf(L"%*s" L"  dwVersion          : %08x - %u\n", level << 1, L"", capiKey->dwVersion, capiKey->dwVersion);
  kprintf(L"%*s" L"  dwUniqueNameLen    : %08x - %u\n", level << 1, L"", capiKey->dwNameLen, capiKey->dwNameLen);
  kprintf(L"%*s" L"  dwSiPublicKeyLen   : %08x - %u\n", level << 1, L"", capiKey->dwSiPublicKeyLen, capiKey->dwSiPublicKeyLen);
  kprintf(L"%*s" L"  dwSiPrivateKeyLen  : %08x - %u\n", level << 1, L"", capiKey->dwSiPrivateKeyLen, capiKey->dwSiPrivateKeyLen);
  kprintf(L"%*s" L"  dwExPublicKeyLen   : %08x - %u\n", level << 1, L"", capiKey->dwExPublicKeyLen, capiKey->dwExPublicKeyLen);
  kprintf(L"%*s" L"  dwExPrivateKeyLen  : %08x - %u\n", level << 1, L"", capiKey->dwExPrivateKeyLen, capiKey->dwExPrivateKeyLen);
  kprintf(L"%*s" L"  dwHashLen          : %08x - %u\n", level << 1, L"", capiKey->dwHashLen, capiKey->dwHashLen);
  kprintf(L"%*s" L"  dwSiExportFlagLen  : %08x - %u\n", level << 1, L"", capiKey->dwSiExportFlagLen, capiKey->dwSiExportFlagLen);
  kprintf(L"%*s" L"  dwExExportFlagLen  : %08x - %u\n", level << 1, L"", capiKey->dwExExportFlagLen, capiKey->dwExExportFlagLen);


  kprintf(L"%*s" L"  pUniqueName        : ", level << 1, L""); kprintf(L"%S\n", capiKey->pName);
  kprintf(L"%*s" L"  pHash              : ", level << 1, L""); kull_m_string_wprintf_hex(capiKey->pHash, capiKey->dwHashLen, 0); kprintf(L"\n");
  kprintf(L"%*s" L"  pSiPublicKey       : ", level << 1, L""); kull_m_string_wprintf_hex(capiKey->pSiPublicKey, capiKey->dwSiPublicKeyLen, 0); kprintf(L"\n");
  kprintf(L"%*s" L"  pSiPrivateKey      :\n", level << 1, L"");
  if(capiKey->pSiPrivateKey && capiKey->dwSiPrivateKeyLen)
   kull_m_dpapi_blob_quick_descr(level + 1, capiKey->pSiPrivateKey);
  kprintf(L"%*s" L"  pSiExportFlag      :\n", level << 1, L"");
  if(capiKey->pSiExportFlag && capiKey->dwSiExportFlagLen)
   kull_m_dpapi_blob_quick_descr(level + 1, capiKey->pSiExportFlag);
  kprintf(L"%*s" L"  pExPublicKey       : ", level << 1, L""); kull_m_string_wprintf_hex(capiKey->pExPublicKey, capiKey->dwExPublicKeyLen, 0); kprintf(L"\n");
  kprintf(L"%*s" L"  pExPrivateKey      :\n", level << 1, L"");
  if(capiKey->pExPrivateKey && capiKey->dwExPrivateKeyLen)
   kull_m_dpapi_blob_quick_descr(level + 1, capiKey->pExPrivateKey);
  kprintf(L"%*s" L"  pExExportFlag      :\n", level << 1, L"");
  if(capiKey->pExExportFlag && capiKey->dwExExportFlagLen)
   kull_m_dpapi_blob_quick_descr(level + 1, capiKey->pExExportFlag);

 }
}
