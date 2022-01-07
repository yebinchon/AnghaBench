
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dwAttributesMapSize; int __cbElements; int * attributes; TYPE_1__* attributesMap; int FriendlyName; int unk2; int unk1; int LastWritten; int unk0; int SchemaId; } ;
struct TYPE_4__ {int unk; int offset; int id; } ;
typedef TYPE_2__* PKULL_M_CRED_VAULT_CREDENTIAL ;
typedef int KULL_M_CRED_VAULT_CREDENTIAL_ATTRIBUTE_MAP ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_cred_vault_credential_attribute_descr (int,int ) ;
 int kull_m_string_displayFileTime (int *) ;
 int kull_m_string_displayGUID (int *) ;

void kull_m_cred_vault_credential_descr(DWORD level, PKULL_M_CRED_VAULT_CREDENTIAL credential)
{
 DWORD i;
 kprintf(L"%*s" L"**VAULT CREDENTIAL**\n", level << 1, L"");
 if(credential)
 {
  kprintf(L"%*s" L"  SchemaId            : ", level << 1, L""); kull_m_string_displayGUID(&credential->SchemaId); kprintf(L"\n");
  kprintf(L"%*s" L"  unk0                : %08x - %u\n", level << 1, L"", credential->unk0, credential->unk0);
  kprintf(L"%*s" L"  LastWritten         : ", level << 1, L""); kull_m_string_displayFileTime(&credential->LastWritten); kprintf(L"\n");
  kprintf(L"%*s" L"  unk1                : %08x - %u\n", level << 1, L"", credential->unk1, credential->unk1);
  kprintf(L"%*s" L"  unk2                : %08x - %u\n", level << 1, L"", credential->unk2, credential->unk2);
  kprintf(L"%*s" L"  FriendlyName        : %s\n", level << 1, L"", credential->FriendlyName);
  kprintf(L"%*s" L"  dwAttributesMapSize : %08x - %u\n", level << 1, L"", credential->dwAttributesMapSize, credential->dwAttributesMapSize);
  for(i = 0; i < (credential->dwAttributesMapSize / sizeof(KULL_M_CRED_VAULT_CREDENTIAL_ATTRIBUTE_MAP)); i++)
   kprintf(L"%*s" L"  * Attribute %3u @ offset %08x - %u  (unk %08x - %u)\n", level << 1, L"", credential->attributesMap[i].id, credential->attributesMap[i].offset, credential->attributesMap[i].offset, credential->attributesMap[i].unk, credential->attributesMap[i].unk);
  for(i = 0; i < credential->__cbElements; i++)
   kull_m_cred_vault_credential_attribute_descr(level + 1, credential->attributes[i]);
  kprintf(L"\n");
 }
}
