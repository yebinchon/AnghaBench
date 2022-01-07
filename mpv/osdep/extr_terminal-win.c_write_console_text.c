
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int HANDLE ;


 int WriteConsoleW (int ,int *,size_t,int *,int *) ;
 int * mp_from_utf8 (int *,char*) ;
 int talloc_free (int *) ;
 size_t wcslen (int *) ;

__attribute__((used)) static void write_console_text(HANDLE wstream, char *buf)
{
    wchar_t *out = mp_from_utf8(((void*)0), buf);
    size_t out_len = wcslen(out);
    WriteConsoleW(wstream, out, out_len, ((void*)0), ((void*)0));
    talloc_free(out);
}
