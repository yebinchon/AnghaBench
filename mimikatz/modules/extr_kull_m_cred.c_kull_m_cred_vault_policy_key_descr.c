
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int KeyBlob; int unk1; int unk0; } ;
typedef TYPE_1__* PKULL_M_CRED_VAULT_POLICY_KEY ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_dpapi_blob_quick_descr (int,int ) ;
 int kull_m_string_displayGUID (int *) ;

void kull_m_cred_vault_policy_key_descr(DWORD level, PKULL_M_CRED_VAULT_POLICY_KEY key)
{
 kprintf(L"%*s" L"**VAULT POLICY KEY**\n", level << 1, L"");
 if(key)
 {
  kprintf(L"%*s" L"  unk0  : ", level << 1, L""); kull_m_string_displayGUID(&key->unk0); kprintf(L"\n");
  kprintf(L"%*s" L"  unk1  : ", level << 1, L""); kull_m_string_displayGUID(&key->unk1); kprintf(L"\n");
  kull_m_dpapi_blob_quick_descr(level + 1, key->KeyBlob);
  kprintf(L"\n");
 }
}
