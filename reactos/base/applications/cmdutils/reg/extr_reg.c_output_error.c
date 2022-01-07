
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LSTATUS ;
typedef scalar_t__ DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 scalar_t__ FormatMessageW (int,int *,int ,int ,int *,int ,int *) ;
 scalar_t__ GetLastError () ;
 int LocalFree (int *) ;
 scalar_t__ NO_ERROR ;
 int SetLastError (scalar_t__) ;
 int WINE_FIXME (char*,scalar_t__,int ) ;
 int output_writeconsole (int *,scalar_t__) ;

__attribute__((used)) static void output_error(LSTATUS status)
{
    WCHAR* str;
    DWORD len;

    SetLastError(NO_ERROR);
    len = FormatMessageW(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_ALLOCATE_BUFFER, ((void*)0), status, 0, (WCHAR*)&str, 0, ((void*)0));
    if (len == 0 && GetLastError() != NO_ERROR)
    {
        WINE_FIXME("Could not format error code: le=%u, error=%u", GetLastError(), status);
        return;
    }

    output_writeconsole(str, len);
    LocalFree(str);
}
