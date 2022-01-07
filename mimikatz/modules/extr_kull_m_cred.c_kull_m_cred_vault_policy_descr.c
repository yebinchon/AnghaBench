
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ key; int unk2; int unk1; int unk0; int Name; int vault; int version; } ;
typedef TYPE_1__* PKULL_M_CRED_VAULT_POLICY ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_cred_vault_policy_key_descr (int,scalar_t__) ;
 int kull_m_string_displayGUID (int *) ;

void kull_m_cred_vault_policy_descr(DWORD level, PKULL_M_CRED_VAULT_POLICY policy)
{
 kprintf(L"%*s" L"**VAULT POLICY**\n", level << 1, L"");
 if(policy)
 {
  kprintf(L"%*s" L"  version : %08x - %u\n", level << 1, L"", policy->version, policy->version);
  kprintf(L"%*s" L"  vault   : ", level << 1, L""); kull_m_string_displayGUID(&policy->vault); kprintf(L"\n");
  kprintf(L"%*s" L"  Name    : %s\n", level << 1, L"", policy->Name);
  kprintf(L"%*s" L"  unk0/1/2: %08x/%08x/%08x\n", level << 1, L"", policy->unk0, policy->unk1, policy->unk2);
  if(policy->key)
   kull_m_cred_vault_policy_key_descr(level + 1, policy->key);
  kprintf(L"\n");
 }
}
