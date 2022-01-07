
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwAccesscheckLen; int pbAccesscheck; int dwSecretLen; int pbSecret; int guidMasterKey; int dwVersion; } ;
typedef TYPE_1__* PKULL_M_DPAPI_MASTERKEY_DOMAINKEY ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_string_displayGUID (int *) ;
 int kull_m_string_wprintf_hex (int ,int ,int ) ;

void kull_m_dpapi_masterkeys_domainkey_descr(DWORD level, PKULL_M_DPAPI_MASTERKEY_DOMAINKEY domainkey)
{
 kprintf(L"%*s" L"**DOMAINKEY**\n", level << 1, L"");
 if(domainkey)
 {
  kprintf(L"%*s" L"  dwVersion        : %08x - %u\n", level << 1, L"", domainkey->dwVersion, domainkey->dwVersion);
  kprintf(L"%*s" L"  dwSecretLen      : %08x - %u\n", level << 1, L"", domainkey->dwSecretLen, domainkey->dwSecretLen);
  kprintf(L"%*s" L"  dwAccesscheckLen : %08x - %u\n", level << 1, L"", domainkey->dwAccesscheckLen, domainkey->dwAccesscheckLen);
  kprintf(L"%*s" L"  guidMasterKey    : ", level << 1, L""); kull_m_string_displayGUID(&domainkey->guidMasterKey); kprintf(L"\n");
  kprintf(L"%*s" L"  pbSecret         : ", level << 1, L""); kull_m_string_wprintf_hex(domainkey->pbSecret, domainkey->dwSecretLen, 0); kprintf(L"\n");
  kprintf(L"%*s" L"  pbAccesscheck    : ", level << 1, L""); kull_m_string_wprintf_hex(domainkey->pbAccesscheck, domainkey->dwAccesscheckLen, 0); kprintf(L"\n\n");
 }
}
