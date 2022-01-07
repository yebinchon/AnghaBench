
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int blobSize; scalar_t__ blob; } ;
typedef scalar_t__ PVOID ;
typedef int PKULL_M_CRED_LEGACY_CREDS_BLOB ;
typedef int PKULL_M_CRED_BLOB ;
typedef TYPE_1__* PKUHL_M_DPAPI_ENCRYPTED_CRED ;
typedef int PCWSTR ;
typedef scalar_t__ PBYTE ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int KULL_M_DPAPI_GUID_PROVIDER ;
 int LocalFree (scalar_t__) ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 scalar_t__ RtlEqualGuid (scalar_t__,int *) ;
 int STATUS_SUCCESS ;
 scalar_t__ kuhl_m_dpapi_unprotect_raw_or_blob (scalar_t__,int ,int *,int,int **,int *,int ,scalar_t__*,int *,char*) ;
 int kull_m_cred_create (scalar_t__) ;
 int kull_m_cred_delete (int ) ;
 int kull_m_cred_descr (int ,int ) ;
 int kull_m_cred_legacy_creds_create (scalar_t__) ;
 int kull_m_cred_legacy_creds_delete (int ) ;
 int kull_m_cred_legacy_creds_descr (int ,int ) ;
 int kull_m_dpapi_blob_quick_descr (int ,scalar_t__) ;
 scalar_t__ kull_m_file_readData (int ,scalar_t__*,int *) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int *,int *) ;

NTSTATUS kuhl_m_dpapi_cred(int argc, wchar_t * argv[])
{
 PCWSTR infile;
 PVOID file, out;
 DWORD szFile, szOut;
 BOOL isNT5Cred;
 PKULL_M_CRED_BLOB cred;
 PKULL_M_CRED_LEGACY_CREDS_BLOB legacyCreds;

 if(kull_m_string_args_byName(argc, argv, L"in", &infile, ((void*)0)))
 {
  if(kull_m_file_readData(infile, (PBYTE *) &file, &szFile))
  {
   isNT5Cred = RtlEqualGuid((PBYTE) file + sizeof(DWORD), &KULL_M_DPAPI_GUID_PROVIDER);
   kull_m_dpapi_blob_quick_descr(0, isNT5Cred ? file : ((PKUHL_M_DPAPI_ENCRYPTED_CRED) file)->blob);
   if(kuhl_m_dpapi_unprotect_raw_or_blob(isNT5Cred ? file : ((PKUHL_M_DPAPI_ENCRYPTED_CRED) file)->blob, isNT5Cred ? szFile : ((PKUHL_M_DPAPI_ENCRYPTED_CRED) file)->blobSize, ((void*)0), argc, argv, ((void*)0), 0, &out, &szOut, isNT5Cred ? L"Decrypting Legacy Credential(s):\n" : L"Decrypting Credential:\n"))
   {
    if(isNT5Cred)
    {
     if(legacyCreds = kull_m_cred_legacy_creds_create(out))
     {
      kull_m_cred_legacy_creds_descr(0, legacyCreds);
      kull_m_cred_legacy_creds_delete(legacyCreds);
     }
    }
    else
    {
     if(cred = kull_m_cred_create(out))
     {
      kull_m_cred_descr(0, cred);
      kull_m_cred_delete(cred);
     }
    }
    LocalFree(out);
   }
   LocalFree(file);
  }
  else PRINT_ERROR_AUTO(L"kull_m_file_readData");
 }
 else PRINT_ERROR(L"Input CRED file needed (/in:file)\n");
 return STATUS_SUCCESS;
}
