
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 int ARRAY_SIZE (char const*) ;
 int FALSE ;
 int GetConsoleOutputCP () ;
 int GetStdHandle (int ) ;
 int MB_OK ;
 int MessageBoxW (int *,char const*,char const*,int ) ;
 int STD_OUTPUT_HANDLE ;
 int WideCharToMultiByte (int ,int ,char const*,int,char*,int,int *,int *) ;
 int WriteConsoleW (int ,char const*,int,int*,int *) ;
 int WriteFile (int ,char*,int,int*,int ) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int strlenW (char const*) ;
 scalar_t__ wshInteractive ;

__attribute__((used)) static void print_string(const WCHAR *string)
{
    DWORD count, ret, len, lena;
    char *buf;

    if(wshInteractive) {
        static const WCHAR windows_script_hostW[] =
            {'W','i','n','d','o','w','s',' ','S','c','r','i','p','t',' ','H','o','s','t',0};
        MessageBoxW(((void*)0), string, windows_script_hostW, MB_OK);
        return;
    }

    len = strlenW(string);
    ret = WriteConsoleW(GetStdHandle(STD_OUTPUT_HANDLE), string, len, &count, ((void*)0));
    if(ret) {
        static const WCHAR crnlW[] = {'\r','\n'};
        WriteConsoleW(GetStdHandle(STD_OUTPUT_HANDLE), crnlW, ARRAY_SIZE(crnlW), &count, ((void*)0));
        return;
    }

    lena = WideCharToMultiByte(GetConsoleOutputCP(), 0, string, len, ((void*)0), 0, ((void*)0), ((void*)0));
    buf = heap_alloc(len);
    if(!buf)
        return;

    WideCharToMultiByte(GetConsoleOutputCP(), 0, string, len, buf, lena, ((void*)0), ((void*)0));
    WriteFile(GetStdHandle(STD_OUTPUT_HANDLE), buf, lena, &count, FALSE);
    heap_free(buf);
    WriteFile(GetStdHandle(STD_OUTPUT_HANDLE), "\r\n", 2, &count, FALSE);
}
