
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_4__ {scalar_t__ Status; scalar_t__ Information; } ;
typedef scalar_t__* PULONG ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int LPVOID ;
typedef TYPE_1__ IO_STATUS_BLOCK ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateEventW (int *,scalar_t__,scalar_t__,int *) ;
 int ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_OPEN_IF ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FIXME (char*) ;
 int GENERIC_EXECUTE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtCreateFile (scalar_t__*,int ,int *,TYPE_1__*,int ,int ,int,int ,int ,int *,int ) ;
 scalar_t__ NtDeviceIoControlFile (scalar_t__,scalar_t__,int *,int *,TYPE_1__*,int ,int ,scalar_t__,int ,scalar_t__) ;
 int NtWaitForSingleObject (scalar_t__,scalar_t__,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RTL_CONSTANT_STRING (char*) ;
 int RtlNtStatusToDosError (scalar_t__) ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ TRUE ;

DWORD TCPSendIoctl(HANDLE hDevice, DWORD dwIoControlCode, LPVOID lpInBuffer, PULONG pInBufferSize, LPVOID lpOutBuffer, PULONG pOutBufferSize)
{
    BOOL Hack = FALSE;
    HANDLE Event;
    IO_STATUS_BLOCK IoStatusBlock;
    NTSTATUS Status;




    if (hDevice == INVALID_HANDLE_VALUE)
    {
        UNICODE_STRING DevName = RTL_CONSTANT_STRING(L"\\Device\\Ip");
        OBJECT_ATTRIBUTES ObjectAttributes;

        FIXME("Using the handle hack\n");
        Hack = TRUE;

        InitializeObjectAttributes(&ObjectAttributes,
                                   &DevName,
                                   OBJ_CASE_INSENSITIVE,
                                   ((void*)0),
                                   ((void*)0));

        Status = NtCreateFile(&hDevice, GENERIC_EXECUTE, &ObjectAttributes,
                              &IoStatusBlock, 0, FILE_ATTRIBUTE_NORMAL, FILE_SHARE_READ | FILE_SHARE_WRITE, FILE_OPEN_IF,
                              0, ((void*)0), 0);
        if (!NT_SUCCESS(Status))
        {
          return RtlNtStatusToDosError(Status);
        }
    }


    Event = CreateEventW(((void*)0), TRUE, FALSE, ((void*)0));
    if (Event == ((void*)0))
    {

        if (Hack)
        {
            CloseHandle(hDevice);
        }
        return GetLastError();
    }


    IoStatusBlock.Status = STATUS_SUCCESS;
    IoStatusBlock.Information = 0;
    Status = NtDeviceIoControlFile(hDevice, Event, ((void*)0), ((void*)0), &IoStatusBlock, dwIoControlCode, lpInBuffer, *pInBufferSize, lpOutBuffer, *pOutBufferSize);
    if (Status == STATUS_PENDING)
    {
        NtWaitForSingleObject(Event, FALSE, ((void*)0));
        Status = IoStatusBlock.Status;
    }


    CloseHandle(Event);
    *pOutBufferSize = IoStatusBlock.Information;


    if (Hack)
    {
        CloseHandle(hDevice);
    }


    if (!NT_SUCCESS(Status))
    {
        return RtlNtStatusToDosError(Status);
    }

    return ERROR_SUCCESS;
}
