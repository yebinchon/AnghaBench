
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int FILE_READ_DATA ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int * InterlockedCompareExchangePointer (int *,int ,int *) ;
 int KsecDeviceHandle ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtOpenFile (int *,int,int *,int *,int,int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int RTL_CONSTANT_STRING (char*) ;
 int STATUS_SUCCESS ;
 int SYNCHRONIZE ;

__attribute__((used)) static
NTSTATUS
KsecOpenDevice()
{
    UNICODE_STRING DeviceName = RTL_CONSTANT_STRING(L"\\Device\\KsecDD");
    OBJECT_ATTRIBUTES ObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    HANDLE DeviceHandle;
    NTSTATUS Status;

    InitializeObjectAttributes(&ObjectAttributes,
                               &DeviceName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
    Status = NtOpenFile(&DeviceHandle,
                        FILE_READ_DATA | SYNCHRONIZE,
                        &ObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                        FILE_SYNCHRONOUS_IO_NONALERT);
    if (!NT_SUCCESS(Status))
    {
        return Status;
    }

    if (InterlockedCompareExchangePointer(&KsecDeviceHandle, DeviceHandle, ((void*)0)) != ((void*)0))
    {
        NtClose(DeviceHandle);
    }

    return STATUS_SUCCESS;
}
