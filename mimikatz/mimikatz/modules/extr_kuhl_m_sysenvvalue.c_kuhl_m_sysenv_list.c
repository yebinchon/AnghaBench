
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {scalar_t__ ValueLength; scalar_t__ ValueOffset; int Attributes; int VendorGuid; int Name; scalar_t__ NextEntryOffset; } ;
typedef TYPE_1__* PVARIABLE_NAME_AND_VALUE ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ DWORD ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int LocalFree (TYPE_1__*) ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtEnumerateSystemEnvironmentValuesEx (int ,TYPE_1__*,scalar_t__*) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 scalar_t__ STATUS_SUCCESS ;
 int VARIABLE_INFORMATION_VALUES ;
 int kprintf (char*,...) ;
 int kuhl_m_sysenv_display_attributes (int ) ;
 int kuhl_m_sysenv_display_vendorGuid (int *) ;
 int kull_m_string_wprintf_hex (scalar_t__,scalar_t__,int) ;

NTSTATUS kuhl_m_sysenv_list(int argc, wchar_t * argv[])
{
 NTSTATUS status;
 PVARIABLE_NAME_AND_VALUE buffer;
 DWORD bufferLen = 0;

 status = NtEnumerateSystemEnvironmentValuesEx(VARIABLE_INFORMATION_VALUES, ((void*)0), &bufferLen);
 if((status == STATUS_BUFFER_TOO_SMALL) && bufferLen)
 {
  if(buffer = (PVARIABLE_NAME_AND_VALUE) LocalAlloc(LPTR, bufferLen))
  {
   status = NtEnumerateSystemEnvironmentValuesEx(VARIABLE_INFORMATION_VALUES, buffer, &bufferLen);
   if(NT_SUCCESS(status))
   {
    for(; buffer; buffer = buffer->NextEntryOffset ? (PVARIABLE_NAME_AND_VALUE) ((PBYTE) buffer + buffer->NextEntryOffset) : ((void*)0))
    {
     kprintf(L"Name       : %s\nVendor GUID: ", buffer->Name);
     kuhl_m_sysenv_display_vendorGuid(&buffer->VendorGuid);
     kprintf(L"\nAttributes : %08x (", buffer->Attributes);
     kuhl_m_sysenv_display_attributes(buffer->Attributes);
     kprintf(L")\nLength     : %u\nData       : ", buffer->ValueLength);
     if(buffer->ValueLength && buffer->ValueOffset)
      kull_m_string_wprintf_hex((PBYTE) buffer + buffer->ValueOffset, buffer->ValueLength, 1);
     kprintf(L"\n\n");
    }
   }
   else PRINT_ERROR(L"NtEnumerateSystemEnvironmentValuesEx(data): 0x%08x\n", status);
   LocalFree(buffer);
  }
 }
 else PRINT_ERROR(L"NtEnumerateSystemEnvironmentValuesEx(size): 0x%08x\n", status);
 return STATUS_SUCCESS;
}
