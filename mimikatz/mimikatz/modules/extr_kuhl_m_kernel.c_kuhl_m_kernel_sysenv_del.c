
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UNICODE_STRING ;
struct TYPE_4__ {int Attributes; int * Name; scalar_t__ ValueOffset; scalar_t__ ValueLength; int VendorGuid; } ;
typedef TYPE_1__* PMIMIDRV_VARIABLE_NAME_AND_VALUE ;
typedef int NTSTATUS ;
typedef int * LPCWSTR ;
typedef int GUID ;
typedef int DWORD ;


 int FIELD_OFFSET (int ,int ) ;
 int IOCTL_MIMIDRV_SYSENVSET ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (TYPE_1__*) ;
 int MIMIDRV_VARIABLE_NAME_AND_VALUE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int Name ;
 int PRINT_ERROR (char*,int ) ;
 int RtlCopyMemory (int *,int *,int) ;
 int RtlGUIDFromString (int *,int *) ;
 int RtlInitUnicodeString (int *,int *) ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kuhl_m_sysenv_display_attributes (int) ;
 int kuhl_m_sysenv_display_vendorGuid (int *) ;
 scalar_t__ kull_m_kernel_mimidrv_simple_output (int ,TYPE_1__*,int) ;
 int kull_m_string_args_byName (int,int **,char*,int **,char*) ;
 scalar_t__ wcslen (int *) ;
 int wcstoul (int *,int *,int ) ;

NTSTATUS kuhl_m_kernel_sysenv_del(int argc, wchar_t * argv[])
{
 NTSTATUS status;
 LPCWSTR szName, szGuid, szAttributes;
 UNICODE_STRING uName, uGuid;
 GUID guid;
 DWORD attributes, nameLen, structSize;
 PMIMIDRV_VARIABLE_NAME_AND_VALUE vnv;

 kull_m_string_args_byName(argc, argv, L"name", &szName, L"Kernel_Lsa_Ppl_Config");
 kull_m_string_args_byName(argc, argv, L"guid", &szGuid, L"{77fa9abd-0359-4d32-bd60-28f4e78f784b}");
 kull_m_string_args_byName(argc, argv, L"attributes", &szAttributes, L"1");

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
  kprintf(L")\n\n");

  nameLen = ((DWORD) wcslen(szName) + 1) * sizeof(wchar_t);
  structSize = FIELD_OFFSET(MIMIDRV_VARIABLE_NAME_AND_VALUE, Name) + nameLen;
  if(vnv = (PMIMIDRV_VARIABLE_NAME_AND_VALUE) LocalAlloc(LPTR, structSize))
  {
   vnv->Attributes = attributes;
   RtlCopyMemory(&vnv->VendorGuid, &guid, sizeof(GUID));
   vnv->ValueLength = 0;
   vnv->ValueOffset = 0;
   RtlCopyMemory(vnv->Name, szName, nameLen);
   if(kull_m_kernel_mimidrv_simple_output(IOCTL_MIMIDRV_SYSENVSET, vnv, structSize))
    kprintf(L"> OK!\n");
   LocalFree(vnv);
  }
 }
 else PRINT_ERROR(L"RtlGUIDFromString: 0x%08x\n", status);
 return STATUS_SUCCESS;
}
