
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int FALSE ;
 int GetConsoleOutputCP () ;
 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int WideCharToMultiByte (int ,int ,int const*,int ,char*,int ,int *,int *) ;
 int WriteConsoleW (int ,int const*,int ,int *,int *) ;
 int WriteFile (int ,char*,int ,int *,int ) ;
 int heap_free (char*) ;
 char* heap_xalloc (int ) ;

void output_writeconsole(const WCHAR *str, DWORD wlen)
{
    DWORD count, ret;

    ret = WriteConsoleW(GetStdHandle(STD_OUTPUT_HANDLE), str, wlen, &count, ((void*)0));
    if (!ret)
    {
        DWORD len;
        char *msgA;





        len = WideCharToMultiByte(GetConsoleOutputCP(), 0, str, wlen, ((void*)0), 0, ((void*)0), ((void*)0));
        msgA = heap_xalloc(len);

        WideCharToMultiByte(GetConsoleOutputCP(), 0, str, wlen, msgA, len, ((void*)0), ((void*)0));
        WriteFile(GetStdHandle(STD_OUTPUT_HANDLE), msgA, len, &count, FALSE);
        heap_free(msgA);
    }
}
