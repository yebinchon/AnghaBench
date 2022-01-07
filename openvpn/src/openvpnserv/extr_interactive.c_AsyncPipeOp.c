
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ async_op_t ;
typedef int OVERLAPPED ;
typedef int LPVOID ;
typedef scalar_t__* LPHANDLE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CancelIo (scalar_t__) ;
 int CloseHandleEx (scalar_t__*) ;
 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ ERROR_MORE_DATA ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetOverlappedResult (scalar_t__,int *,int*,int ) ;
 int INFINITE ;
 int IO_TIMEOUT ;
 scalar_t__ InitOverlapped (int *) ;
 int PeekNamedPipe (scalar_t__,int *,int ,int *,int*,int *) ;
 int ReadFile (scalar_t__,int ,int,int *,int *) ;
 int TRUE ;
 int WAIT_OBJECT_0 ;
 int WaitForMultipleObjects (int,scalar_t__*,int ,int ) ;
 int WriteFile (scalar_t__,int ,int,int *,int *) ;
 int free (scalar_t__*) ;
 scalar_t__* malloc (int) ;
 scalar_t__ peek ;
 scalar_t__ write ;

__attribute__((used)) static DWORD
AsyncPipeOp(async_op_t op, HANDLE pipe, LPVOID buffer, DWORD size, DWORD count, LPHANDLE events)
{
    DWORD i;
    BOOL success;
    HANDLE io_event;
    DWORD res, bytes = 0;
    OVERLAPPED overlapped;
    LPHANDLE handles = ((void*)0);

    io_event = InitOverlapped(&overlapped);
    if (!io_event)
    {
        goto out;
    }

    handles = malloc((count + 1) * sizeof(HANDLE));
    if (!handles)
    {
        goto out;
    }

    if (op == write)
    {
        success = WriteFile(pipe, buffer, size, ((void*)0), &overlapped);
    }
    else
    {
        success = ReadFile(pipe, buffer, size, ((void*)0), &overlapped);
    }
    if (!success && GetLastError() != ERROR_IO_PENDING && GetLastError() != ERROR_MORE_DATA)
    {
        goto out;
    }

    handles[0] = io_event;
    for (i = 0; i < count; i++)
    {
        handles[i + 1] = events[i];
    }

    res = WaitForMultipleObjects(count + 1, handles, FALSE,
                                 op == peek ? INFINITE : IO_TIMEOUT);
    if (res != WAIT_OBJECT_0)
    {
        CancelIo(pipe);
        goto out;
    }

    if (op == peek)
    {
        PeekNamedPipe(pipe, ((void*)0), 0, ((void*)0), &bytes, ((void*)0));
    }
    else
    {
        GetOverlappedResult(pipe, &overlapped, &bytes, TRUE);
    }

out:
    CloseHandleEx(&io_event);
    free(handles);
    return bytes;
}
