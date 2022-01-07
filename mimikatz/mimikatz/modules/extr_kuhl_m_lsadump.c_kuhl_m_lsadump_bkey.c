
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {scalar_t__ Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int * PCWCHAR ;
typedef int NTSTATUS ;
typedef int * LPCGUID ;
typedef int GUID ;
typedef int BOOL ;


 int LocalFree (scalar_t__) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,int ,...) ;
 int RtlGUIDFromString (TYPE_1__*,int *) ;
 int RtlInitUnicodeString (TYPE_1__*,int *) ;
 int STATUS_SUCCESS ;
 int kprintf (char*) ;
 int kuhl_m_lsadump_LsaRetrievePrivateData (int *,char*,TYPE_1__*,int ) ;
 int kuhl_m_lsadump_getKeyFromGUID (int *,int ,int *,int ) ;
 int kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 int kull_m_string_displayGUID (int *) ;

NTSTATUS kuhl_m_lsadump_bkey(int argc, wchar_t * argv[])
{
 NTSTATUS status;
 UNICODE_STRING secret;
 GUID guid;
 PCWCHAR szGuid = ((void*)0), szSystem = ((void*)0);
 BOOL export = kull_m_string_args_byName(argc, argv, L"export", ((void*)0), ((void*)0));
 BOOL isSecret = kull_m_string_args_byName(argc, argv, L"secret", ((void*)0), ((void*)0));

 kull_m_string_args_byName(argc, argv, L"system", &szSystem, ((void*)0));
 kull_m_string_args_byName(argc, argv, L"guid", &szGuid, ((void*)0));
 if(szGuid)
 {
  RtlInitUnicodeString(&secret, szGuid);
  status = RtlGUIDFromString(&secret, &guid);
  if(NT_SUCCESS(status))
  {
   kprintf(L"\n"); kull_m_string_displayGUID(&guid); kprintf(L" seems to be a valid GUID\n");
   kuhl_m_lsadump_getKeyFromGUID(&guid, export, szSystem, isSecret);
  }
  else PRINT_ERROR(L"Invalid GUID (0x%08x) ; %s\n", status, szGuid);
 }
 else
 {
  kprintf(L"\nCurrent prefered key:       ");
  status = kuhl_m_lsadump_LsaRetrievePrivateData(szSystem, L"G$BCKUPKEY_PREFERRED", &secret, isSecret);
  if(NT_SUCCESS(status))
  {
   kull_m_string_displayGUID((LPCGUID) secret.Buffer); kprintf(L"\n");
   kuhl_m_lsadump_getKeyFromGUID((LPCGUID) secret.Buffer, export, szSystem, isSecret);
   LocalFree(secret.Buffer);
  }
  else PRINT_ERROR(L"kuhl_m_lsadump_LsaRetrievePrivateData: 0x%08x\n", status);

  kprintf(L"\nCompatibility prefered key: ");
  status = kuhl_m_lsadump_LsaRetrievePrivateData(szSystem, L"G$BCKUPKEY_P", &secret, isSecret);
  if(NT_SUCCESS(status))
  {
   kull_m_string_displayGUID((LPCGUID) secret.Buffer); kprintf(L"\n");
   kuhl_m_lsadump_getKeyFromGUID((LPCGUID) secret.Buffer, export, szSystem, isSecret);
   LocalFree(secret.Buffer);
  }
  else PRINT_ERROR(L"kuhl_m_lsadump_LsaRetrievePrivateData: 0x%08x\n", status);
 }
 return STATUS_SUCCESS;
}
