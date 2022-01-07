
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;


 int * KsecDeviceHandle ;
 int KsecOpenDevice () ;
 int NT_SUCCESS (int ) ;
 int NtDeviceIoControlFile (int *,int *,int *,int *,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static
NTSTATUS
KsecDeviceIoControl(
    ULONG IoControlCode,
    PVOID InputBuffer,
    SIZE_T InputBufferLength,
    PVOID OutputBuffer,
    SIZE_T OutputBufferLength)
{
    IO_STATUS_BLOCK IoStatusBlock;
    NTSTATUS Status;


    if (KsecDeviceHandle == ((void*)0))
    {

        Status = KsecOpenDevice();
        if (!NT_SUCCESS(Status))
        {

            return Status;
        }
    }


    Status = NtDeviceIoControlFile(KsecDeviceHandle,
                                   ((void*)0),
                                   ((void*)0),
                                   ((void*)0),
                                   &IoStatusBlock,
                                   IoControlCode,
                                   InputBuffer,
                                   InputBufferLength,
                                   OutputBuffer,
                                   OutputBufferLength);

    return Status;
}
