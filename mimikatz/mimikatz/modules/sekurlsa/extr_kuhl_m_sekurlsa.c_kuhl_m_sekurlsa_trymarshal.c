
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int VOID ;
struct TYPE_9__ {int cbBlob; int pbBlob; } ;
struct TYPE_8__ {int cbSize; int rgbHashOfCert; } ;
struct TYPE_7__ {scalar_t__ Length; scalar_t__ Buffer; } ;
struct TYPE_6__ {int UserName; } ;
typedef scalar_t__ PWSTR ;
typedef int PVOID ;
typedef TYPE_1__* PUSERNAME_TARGET_CREDENTIAL_INFO ;
typedef TYPE_2__* PCUNICODE_STRING ;
typedef TYPE_3__* PCERT_CREDENTIAL_INFO ;
typedef TYPE_4__* PBINARY_BLOB_CREDENTIAL_INFO ;
typedef int CRED_MARSHAL_TYPE ;
typedef int CERT_CREDENTIAL_INFO ;



 int CERT_HASH_LENGTH ;

 scalar_t__ CredIsMarshaledCredential (scalar_t__) ;
 scalar_t__ CredUnmarshalCredential (scalar_t__,int *,int *) ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int LocalFree (scalar_t__) ;
 int PRINT_ERROR (char*,int) ;
 int PRINT_ERROR_AUTO (char*) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,scalar_t__) ;


 int kprintf (char*,...) ;
 int kull_m_string_wprintf_hex (int ,int ,int) ;

VOID kuhl_m_sekurlsa_trymarshal(PCUNICODE_STRING MarshaledCredential)
{
 PWSTR buffer;
 CRED_MARSHAL_TYPE type;
 PVOID Credential;

 if(MarshaledCredential->Length && MarshaledCredential->Buffer)
 {
  if(buffer = (PWSTR) LocalAlloc(LPTR, MarshaledCredential->Length + sizeof(wchar_t)))
  {
   RtlCopyMemory(buffer, MarshaledCredential->Buffer, MarshaledCredential->Length);
   if(CredIsMarshaledCredential(buffer))
   {
    kprintf(L"\n\t * Marshaled: ");
    if(CredUnmarshalCredential(buffer, &type, &Credential))
    {
     switch(type)
     {
     case 130:
      if(((PCERT_CREDENTIAL_INFO) Credential)->cbSize == sizeof(CERT_CREDENTIAL_INFO))
      {
       kprintf(L"[Cert] SHA1:");
       kull_m_string_wprintf_hex(((PCERT_CREDENTIAL_INFO) Credential)->rgbHashOfCert, CERT_HASH_LENGTH, 0);
      }
      else PRINT_ERROR(L"Credential->cbSize is %u\n", ((PCERT_CREDENTIAL_INFO) Credential)->cbSize);
      break;
     case 128:
      kprintf(L"[UsernameTarget] %s\n", ((PUSERNAME_TARGET_CREDENTIAL_INFO) Credential)->UserName);
      break;
     case 131:
      kprintf(L"[BinaryBlob] ");
      kull_m_string_wprintf_hex(((PBINARY_BLOB_CREDENTIAL_INFO) Credential)->pbBlob, ((PBINARY_BLOB_CREDENTIAL_INFO) Credential)->cbBlob, 1);
      break;
     case 129:
      kprintf(L"[UsernameForPacked] ?");
      break;
     default:
      kprintf(L"[?] ?");
     }
    }
    else PRINT_ERROR_AUTO(L"CredUnmarshalCredential");
   }
   LocalFree(buffer);
  }
 }
}
