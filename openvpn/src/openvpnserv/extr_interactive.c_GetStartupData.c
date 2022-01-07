
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_3__ {scalar_t__* directory; scalar_t__* options; scalar_t__* std_input; } ;
typedef TYPE_1__ STARTUP_DATA ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_STARTUP_DATA ;
 int FALSE ;
 int M_ERR ;
 int M_SYSERR ;
 int MsgToEventLog (int ,int ) ;
 int PeekNamedPipeAsync (int ,int,int *) ;
 int ReadPipeAsync (int ,scalar_t__*,int,int,int *) ;
 int ReturnError (int ,int ,char*,int,int *) ;
 int ReturnLastError (int ,char*) ;
 int TEXT (char*) ;
 int TRUE ;
 int exit_event ;
 int free (scalar_t__*) ;
 scalar_t__* malloc (int) ;
 int wcslen (scalar_t__*) ;

__attribute__((used)) static BOOL
GetStartupData(HANDLE pipe, STARTUP_DATA *sud)
{
    size_t size, len;
    WCHAR *data = ((void*)0);
    DWORD bytes, read;

    bytes = PeekNamedPipeAsync(pipe, 1, &exit_event);
    if (bytes == 0)
    {
        MsgToEventLog(M_SYSERR, TEXT("PeekNamedPipeAsync failed"));
        ReturnLastError(pipe, L"PeekNamedPipeAsync");
        goto err;
    }

    size = bytes / sizeof(*data);
    if (size == 0)
    {
        MsgToEventLog(M_SYSERR, TEXT("malformed startup data: 1 byte received"));
        ReturnError(pipe, ERROR_STARTUP_DATA, L"GetStartupData", 1, &exit_event);
        goto err;
    }

    data = malloc(bytes);
    if (data == ((void*)0))
    {
        MsgToEventLog(M_SYSERR, TEXT("malloc failed"));
        ReturnLastError(pipe, L"malloc");
        goto err;
    }

    read = ReadPipeAsync(pipe, data, bytes, 1, &exit_event);
    if (bytes != read)
    {
        MsgToEventLog(M_SYSERR, TEXT("ReadPipeAsync failed"));
        ReturnLastError(pipe, L"ReadPipeAsync");
        goto err;
    }

    if (data[size - 1] != 0)
    {
        MsgToEventLog(M_ERR, TEXT("Startup data is not NULL terminated"));
        ReturnError(pipe, ERROR_STARTUP_DATA, L"GetStartupData", 1, &exit_event);
        goto err;
    }

    sud->directory = data;
    len = wcslen(sud->directory) + 1;
    size -= len;
    if (size <= 0)
    {
        MsgToEventLog(M_ERR, TEXT("Startup data ends at working directory"));
        ReturnError(pipe, ERROR_STARTUP_DATA, L"GetStartupData", 1, &exit_event);
        goto err;
    }

    sud->options = sud->directory + len;
    len = wcslen(sud->options) + 1;
    size -= len;
    if (size <= 0)
    {
        MsgToEventLog(M_ERR, TEXT("Startup data ends at command line options"));
        ReturnError(pipe, ERROR_STARTUP_DATA, L"GetStartupData", 1, &exit_event);
        goto err;
    }

    sud->std_input = sud->options + len;
    return TRUE;

err:
    sud->directory = ((void*)0);
    free(data);
    return FALSE;
}
