
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int LPCWSTR ;
typedef int LPBYTE ;
typedef int GUID ;
typedef int DWORD ;


 int LocalFree (int ) ;
 char* MIMIKATZ ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtSetSystemEnvironmentValueEx (int *,int *,int ,int ,int ) ;
 int PRINT_ERROR (char*,int ) ;
 int RtlGUIDFromString (int *,int *) ;
 int RtlInitUnicodeString (int *,int ) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_m_sysenv_display_attributes (int ) ;
 int kuhl_m_sysenv_display_vendorGuid (int *) ;
 int kull_m_string_args_byName (int,int **,char*,int *,char*) ;
 scalar_t__ kull_m_string_stringToHexBuffer (int ,int *,int *) ;
 int kull_m_string_wprintf_hex (int ,int ,int) ;
 int wcstoul (int ,int *,int ) ;

NTSTATUS kuhl_m_sysenv_set(int argc, wchar_t * argv[])
{
 NTSTATUS status;
 LPCWSTR szName, szGuid, szAttributes, szData;
 UNICODE_STRING uName, uGuid;
 GUID guid;
 LPBYTE hex;
 DWORD size, attributes;

 kull_m_string_args_byName(argc, argv, L"name", &szName, MIMIKATZ);
 kull_m_string_args_byName(argc, argv, L"guid", &szGuid, L"{b16b00b5-cafe-babe-0ee0-dabadabad000}");
 kull_m_string_args_byName(argc, argv, L"attributes", &szAttributes, L"1");
 kull_m_string_args_byName(argc, argv, L"data", &szData, L"410020004c00610020005600690065002c002000410020004c00270041006d006f00750072000000");

 RtlInitUnicodeString(&uName, szName);
 RtlInitUnicodeString(&uGuid, szGuid);
 attributes = wcstoul(szAttributes, ((void*)0), 0);

 status = RtlGUIDFromString(&uGuid, &guid);
 if(NT_SUCCESS(status))
 {
  kprintf(L"Name       : %wZ\nVendor GUID: ", &uName);
  kuhl_m_sysenv_display_vendorGuid(&guid);
  kprintf(L"\nAttributes : %08x (", attributes);
  kuhl_m_sysenv_display_attributes(attributes);
  kprintf(L")\n");
  if(kull_m_string_stringToHexBuffer(szData, &hex, &size))
  {
   kprintf(L"Length     : %u\nData       : ", size);
   kull_m_string_wprintf_hex(hex, size, 1);
   kprintf(L"\n\n");
   status = NtSetSystemEnvironmentValueEx(&uName, &guid, hex, size, attributes);
   if(NT_SUCCESS(status))
    kprintf(L"> OK!\n");
   else PRINT_ERROR(L"NtSetSystemEnvironmentValueEx(data): 0x%08x\n", status);
   LocalFree(hex);
  }
 }
 else PRINT_ERROR(L"RtlGUIDFromString: 0x%08x\n", status);
 return STATUS_SUCCESS;
}
