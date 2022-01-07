
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int FILE ;
typedef scalar_t__ BOOL ;


 char* GetMultiByteString (int const*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 int fputs (char*,int *) ;
 int fwrite (int const*,int,int ,int *) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static void REGPROC_write_line(FILE *file, const WCHAR* str, BOOL unicode)
{
    if(unicode)
    {
        fwrite(str, sizeof(WCHAR), lstrlenW(str), file);
    } else
    {
        char* strA = GetMultiByteString(str);
        fputs(strA, file);
        HeapFree(GetProcessHeap(), 0, strA);
    }
}
