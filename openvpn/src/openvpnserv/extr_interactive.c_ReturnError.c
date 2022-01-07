
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int VOID ;
typedef char* LPWSTR ;
typedef char* LPVOID ;
typedef int LPHANDLE ;
typedef int LPCWSTR ;
typedef int HANDLE ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_OPENVPN_STARTUP ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessageW (int,char*,scalar_t__,int ,char*,int ,int *) ;
 int LocalFree (char*) ;
 int MSG_FLAGS_ERROR ;
 int MsgToEventLog (int ,char*,...) ;
 int WritePipeAsync (int ,char*,scalar_t__,scalar_t__,int ) ;
 int wcslen (char*) ;

__attribute__((used)) static VOID
ReturnError(HANDLE pipe, DWORD error, LPCWSTR func, DWORD count, LPHANDLE events)
{
    DWORD result_len;
    LPWSTR result = L"0xffffffff\nFormatMessage failed\nCould not return result";
    DWORD_PTR args[] = {
        (DWORD_PTR) error,
        (DWORD_PTR) func,
        (DWORD_PTR) ""
    };

    if (error != ERROR_OPENVPN_STARTUP)
    {
        FormatMessageW(FORMAT_MESSAGE_FROM_SYSTEM
                       |FORMAT_MESSAGE_ALLOCATE_BUFFER
                       |FORMAT_MESSAGE_IGNORE_INSERTS,
                       0, error, 0, (LPWSTR) &args[2], 0, ((void*)0));
    }

    result_len = FormatMessageW(FORMAT_MESSAGE_FROM_STRING
                                |FORMAT_MESSAGE_ALLOCATE_BUFFER
                                |FORMAT_MESSAGE_ARGUMENT_ARRAY,
                                L"0x%1!08x!\n%2!s!\n%3!s!", 0, 0,
                                (LPWSTR) &result, 0, (va_list *) args);

    WritePipeAsync(pipe, result, (DWORD)(wcslen(result) * 2), count, events);



    MsgToEventLog(MSG_FLAGS_ERROR, "%S", result);


    if (error != ERROR_OPENVPN_STARTUP)
    {
        LocalFree((LPVOID) args[2]);
    }
    if (result_len)
    {
        LocalFree(result);
    }
}
