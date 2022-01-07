
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __ms_va_list ;
typedef int WCHAR ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int FALSE ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FormatMessageW (int ,int const*,int ,int ,int *,int ,int *) ;
 int GetConsoleOutputCP () ;
 int GetProcessHeap () ;
 int GetStdHandle (int ) ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int STD_OUTPUT_HANDLE ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 int WriteConsoleW (int ,int *,int,int*,int *) ;
 int WriteFile (int ,char*,int,int*,int ) ;

__attribute__((used)) static int taskkill_vprintfW(const WCHAR *msg, __ms_va_list va_args)
{
    int wlen;
    DWORD count, ret;
    WCHAR msg_buffer[8192];

    wlen = FormatMessageW(FORMAT_MESSAGE_FROM_STRING, msg, 0, 0, msg_buffer,
                          ARRAY_SIZE(msg_buffer), &va_args);

    ret = WriteConsoleW(GetStdHandle(STD_OUTPUT_HANDLE), msg_buffer, wlen, &count, ((void*)0));
    if (!ret)
    {
        DWORD len;
        char *msgA;





        len = WideCharToMultiByte(GetConsoleOutputCP(), 0, msg_buffer, wlen,
            ((void*)0), 0, ((void*)0), ((void*)0));
        msgA = HeapAlloc(GetProcessHeap(), 0, len);
        if (!msgA)
            return 0;

        WideCharToMultiByte(GetConsoleOutputCP(), 0, msg_buffer, wlen, msgA, len,
            ((void*)0), ((void*)0));
        WriteFile(GetStdHandle(STD_OUTPUT_HANDLE), msgA, len, &count, FALSE);
        HeapFree(GetProcessHeap(), 0, msgA);
    }

    return count;
}
