
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HANDLE ;
typedef int DWORD ;


 int WriteFile (int ,int const*,int,int *,int *) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static void write_file(HANDLE hFile, const WCHAR *str)
{
    DWORD written;

    WriteFile(hFile, str, lstrlenW(str) * sizeof(WCHAR), &written, ((void*)0));
}
