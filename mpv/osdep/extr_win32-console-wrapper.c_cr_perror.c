
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int LPWSTR ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageW (int,int *,int ,int ,int ,int ,int *) ;
 int GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (char*) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int fwprintf (int ,char*,char const*,char*) ;
 int stderr ;

__attribute__((used)) static void cr_perror(const wchar_t *prefix)
{
    wchar_t *error;

    FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                   FORMAT_MESSAGE_FROM_SYSTEM |
                   FORMAT_MESSAGE_IGNORE_INSERTS,
                   ((void*)0), GetLastError(),
                   MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                   (LPWSTR)&error, 0, ((void*)0));

    fwprintf(stderr, L"%s: %s", prefix, error);
    LocalFree(error);
}
