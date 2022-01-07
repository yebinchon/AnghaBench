
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UNICODE_STRING ;
typedef int * PVOID ;
typedef scalar_t__ NTSTATUS ;
typedef int LPCWSTR ;
typedef int GUID ;
typedef int DWORD ;


 int LPTR ;
 int * LocalAlloc (int ,int ) ;
 int LocalFree (int *) ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtQuerySystemEnvironmentValueEx (int *,int *,int *,int *,int *) ;
 int PRINT_ERROR (char*,...) ;
 scalar_t__ RtlGUIDFromString (int *,int *) ;
 int RtlInitUnicodeString (int *,int ) ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_VARIABLE_NOT_FOUND ;
 int kprintf (char*,...) ;
 int kuhl_m_sysenv_display_attributes (int ) ;
 int kuhl_m_sysenv_display_vendorGuid (int *) ;
 int kull_m_string_args_byName (int,int **,char*,int *,char*) ;
 int kull_m_string_wprintf_hex (int *,int ,int) ;

NTSTATUS kuhl_m_sysenv_get(int argc, wchar_t * argv[])
{
 NTSTATUS status;
 LPCWSTR szName, szGuid;
 UNICODE_STRING uName, uGuid;
 GUID guid;
 DWORD bufferLen = 0, attributes;
 PVOID buffer;

 kull_m_string_args_byName(argc, argv, L"name", &szName, L"Kernel_Lsa_Ppl_Config");
 kull_m_string_args_byName(argc, argv, L"guid", &szGuid, L"{77fa9abd-0359-4d32-bd60-28f4e78f784b}");
 RtlInitUnicodeString(&uName, szName);
 RtlInitUnicodeString(&uGuid, szGuid);

 status = RtlGUIDFromString(&uGuid, &guid);
 if(NT_SUCCESS(status))
 {
  kprintf(L"Name       : %wZ\nVendor GUID: ", &uName);
  kuhl_m_sysenv_display_vendorGuid(&guid);
  kprintf(L"\n");
  status = NtQuerySystemEnvironmentValueEx(&uName, &guid, ((void*)0), &bufferLen, &attributes);
  if((status == STATUS_BUFFER_TOO_SMALL) && bufferLen)
  {
   if(buffer = LocalAlloc(LPTR, bufferLen))
   {
    status = NtQuerySystemEnvironmentValueEx(&uName, &guid, buffer, &bufferLen, &attributes);
    if(NT_SUCCESS(status))
    {
     kprintf(L"Attributes : %08x (", attributes);
     kuhl_m_sysenv_display_attributes(attributes);
     kprintf(L")\nLength     : %u\nData       : ", bufferLen);
     kull_m_string_wprintf_hex(buffer, bufferLen, 1);
     kprintf(L"\n");
    }
    else PRINT_ERROR(L"NtQuerySystemEnvironmentValueEx(data): 0x%08x\n", status);
    LocalFree(buffer);
   }
  }
  else if(status == STATUS_VARIABLE_NOT_FOUND)
   PRINT_ERROR(L"System Environment Variable not found.\n");
  else PRINT_ERROR(L"NtQuerySystemEnvironmentValueEx(size): 0x%08x\n", status);
 }
 else PRINT_ERROR(L"RtlGUIDFromString: 0x%08x\n", status);
 return STATUS_SUCCESS;
}
