
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int Buffer; int Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int * LPCWSTR ;
typedef scalar_t__ BOOL ;


 int LocalFree (int ) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,int ) ;
 int STATUS_SUCCESS ;
 int kuhl_m_lsadump_LsaRetrievePrivateData (int *,int *,TYPE_1__*,scalar_t__) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,int **,int *) ;
 int kull_m_string_wprintf_hex (int ,int ,int) ;

NTSTATUS kuhl_m_lsadump_rpdata(int argc, wchar_t * argv[])
{
 NTSTATUS status;
 UNICODE_STRING secret;
 LPCWSTR szName, szSystem = ((void*)0);
 BOOL export = kull_m_string_args_byName(argc, argv, L"export", ((void*)0), ((void*)0));
 BOOL isSecret = kull_m_string_args_byName(argc, argv, L"secret", ((void*)0), ((void*)0));
 if(kull_m_string_args_byName(argc, argv, L"name", &szName, ((void*)0)))
 {
  kull_m_string_args_byName(argc, argv, L"system", &szSystem, ((void*)0));
  status = kuhl_m_lsadump_LsaRetrievePrivateData(szSystem, szName, &secret, isSecret);
  if(NT_SUCCESS(status))
  {
   kull_m_string_wprintf_hex(secret.Buffer, secret.Length, 1 | (16<<16));
   LocalFree(secret.Buffer);
  }
  else PRINT_ERROR(L"kuhl_m_lsadump_LsaRetrievePrivateData: 0x%08x\n", status);
 }
 return STATUS_SUCCESS;
}
