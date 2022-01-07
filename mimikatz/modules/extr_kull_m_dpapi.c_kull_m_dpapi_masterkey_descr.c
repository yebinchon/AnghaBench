
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int __dwKeyLen; int pbKey; int algCrypt; int algHash; int rounds; int salt; int dwVersion; } ;
typedef TYPE_1__* PKULL_M_DPAPI_MASTERKEY ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_crypto_algid_to_name (int ) ;
 int kull_m_string_wprintf_hex (int ,int,int ) ;

void kull_m_dpapi_masterkey_descr(DWORD level, PKULL_M_DPAPI_MASTERKEY masterkey)
{
 kprintf(L"%*s" L"**MASTERKEY**\n", level << 1, L"");
 if(masterkey)
 {
  kprintf(L"%*s" L"  dwVersion        : %08x - %u\n", level << 1, L"", masterkey->dwVersion, masterkey->dwVersion);
  kprintf(L"%*s" L"  salt             : ", level << 1, L""); kull_m_string_wprintf_hex(masterkey->salt, sizeof(masterkey->salt), 0); kprintf(L"\n");
  kprintf(L"%*s" L"  rounds           : %08x - %u\n", level << 1, L"", masterkey->rounds, masterkey->rounds);
  kprintf(L"%*s" L"  algHash          : %08x - %u (%s)\n", level << 1, L"", masterkey->algHash, masterkey->algHash, kull_m_crypto_algid_to_name(masterkey->algHash));
  kprintf(L"%*s" L"  algCrypt         : %08x - %u (%s)\n", level << 1, L"", masterkey->algCrypt, masterkey->algCrypt, kull_m_crypto_algid_to_name(masterkey->algCrypt));
  kprintf(L"%*s" L"  pbKey            : ", level << 1, L""); kull_m_string_wprintf_hex(masterkey->pbKey, masterkey->__dwKeyLen, 0); kprintf(L"\n\n");
 }
}
