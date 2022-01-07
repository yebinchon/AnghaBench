
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AttributeCount; int Attributes; int CredentialBlobSize; int CredentialBlob; int UserName; int TargetAlias; int Comment; int TargetName; int unk1; int unk0; int Persist; int unkFlagsOrSize; int LastWritten; int Type; int Flags; int credSize; } ;
typedef TYPE_1__* PKULL_M_CRED_LEGACY_CRED_BLOB ;
typedef int DWORD ;


 int kprintf (char*,...) ;
 int kull_m_cred_CredPersist (int ) ;
 int kull_m_cred_CredType (int ) ;
 int kull_m_cred_attributes_descr (int,int ,int ) ;
 int kull_m_string_displayFileTime (int *) ;
 int kull_m_string_printSuspectUnicodeString (int ,int ) ;

void kull_m_cred_legacy_cred_descr(DWORD level, PKULL_M_CRED_LEGACY_CRED_BLOB cred)
{
 kprintf(L"%*s" L"**LEGACY CREDENTIAL**\n", level << 1, L"");
 if(cred)
 {
  kprintf(L"%*s" L"  credSize       : %08x - %u\n\n", level << 1, L"", cred->credSize, cred->credSize);
  kprintf(L"%*s" L"  Flags          : %08x - %u\n", level << 1, L"", cred->Flags, cred->Flags);
  kprintf(L"%*s" L"  Type           : %08x - %u - %s\n", level << 1, L"", cred->Type, cred->Type, kull_m_cred_CredType(cred->Type));
  kprintf(L"%*s" L"  LastWritten    : ", level << 1, L""); kull_m_string_displayFileTime(&cred->LastWritten); kprintf(L"\n");
  kprintf(L"%*s" L"  unkFlagsOrSize : %08x - %u\n", level << 1, L"", cred->unkFlagsOrSize, cred->unkFlagsOrSize);
  kprintf(L"%*s" L"  Persist        : %08x - %u - %s\n", level << 1, L"", cred->Persist, cred->Persist, kull_m_cred_CredPersist(cred->Persist));
  kprintf(L"%*s" L"  AttributeCount : %08x - %u\n", level << 1, L"", cred->AttributeCount, cred->AttributeCount);
  kprintf(L"%*s" L"  unk0           : %08x - %u\n", level << 1, L"", cred->unk0, cred->unk0);
  kprintf(L"%*s" L"  unk1           : %08x - %u\n", level << 1, L"", cred->unk1, cred->unk1);
  kprintf(L"%*s" L"  TargetName     : %s\n", level << 1, L"", cred->TargetName);
  kprintf(L"%*s" L"  Comment        : %s\n", level << 1, L"", cred->Comment);
  kprintf(L"%*s" L"  TargetAlias    : %s\n", level << 1, L"", cred->TargetAlias);
  kprintf(L"%*s" L"  UserName       : %s\n", level << 1, L"", cred->UserName);
  kprintf(L"%*s" L"  CredentialBlob : ", level << 1, L"");
  kull_m_string_printSuspectUnicodeString(cred->CredentialBlob, cred->CredentialBlobSize);
  kprintf(L"\n");
  kprintf(L"%*s" L"  Attributes     : %u\n", level << 1, L"", cred->AttributeCount);
  kull_m_cred_attributes_descr(level + 1, cred->Attributes, cred->AttributeCount);
 }
}
