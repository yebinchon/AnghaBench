
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwNextLen; int guid; int dwVersion; } ;
struct TYPE_5__ {int __dwSecretLen; int pSecret; int pSid; int salt; int md4Len; int sha1Len; int algCrypt; int sidLen; int rounds; int algHash; int dwType; TYPE_1__ header; } ;
typedef TYPE_2__* PKULL_M_DPAPI_CREDHIST_ENTRY ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_crypto_algid_to_name (int ) ;
 int kull_m_string_displayGUID (int *) ;
 int kull_m_string_displaySID (int ) ;
 int kull_m_string_wprintf_hex (int ,int,int ) ;

void kull_m_dpapi_credhist_entry_descr(DWORD level, PKULL_M_DPAPI_CREDHIST_ENTRY entry)
{
 kprintf(L"%*s" L"**CREDHIST ENTRY**\n", level << 1, L"");
 if(entry)
 {
  kprintf(L"%*s" L"  dwVersion : %08x - %u\n", level << 1, L"", entry->header.dwVersion, entry->header.dwVersion);
  kprintf(L"%*s" L"  guid      : ", level << 1, L""); kull_m_string_displayGUID(&entry->header.guid); kprintf(L"\n");
  kprintf(L"%*s" L"  dwNextLen : %08x - %u\n", level << 1, L"", entry->header.dwNextLen, entry->header.dwNextLen);

  kprintf(L"%*s" L"  dwType    : %08x - %u\n", level << 1, L"", entry->dwType, entry->dwType);
  kprintf(L"%*s" L"  algHash   : %08x - %u (%s)\n", level << 1, L"", entry->algHash, entry->algHash, kull_m_crypto_algid_to_name(entry->algHash));
  kprintf(L"%*s" L"  rounds    : %08x - %u\n", level << 1, L"", entry->rounds, entry->rounds);
  kprintf(L"%*s" L"  sidLen    : %08x - %u\n", level << 1, L"", entry->sidLen, entry->sidLen);
  kprintf(L"%*s" L"  algCrypt  : %08x - %u (%s)\n", level << 1, L"", entry->algCrypt, entry->algCrypt, kull_m_crypto_algid_to_name(entry->algCrypt));
  kprintf(L"%*s" L"  sha1Len   : %08x - %u\n", level << 1, L"", entry->sha1Len, entry->sha1Len);
  kprintf(L"%*s" L"  md4Len    : %08x - %u\n", level << 1, L"", entry->md4Len, entry->md4Len);

  kprintf(L"%*s" L"  Salt      : ", level << 1, L""); kull_m_string_wprintf_hex(entry->salt, sizeof(entry->salt), 0); kprintf(L"\n");
  kprintf(L"%*s" L"  Sid       : ", level << 1, L""); kull_m_string_displaySID(entry->pSid); kprintf(L"\n");
  kprintf(L"%*s" L"  pSecret   : ", level << 1, L""); kull_m_string_wprintf_hex(entry->pSecret, entry->__dwSecretLen, 0); kprintf(L"\n\n");
 }
}
