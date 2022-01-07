
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __ms_va_list ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_STRING ;
 scalar_t__ FormatMessageW (int,int const*,int ,int ,int *,int ,int *) ;
 scalar_t__ GetLastError () ;
 int LocalFree (int *) ;
 scalar_t__ NO_ERROR ;
 int SetLastError (scalar_t__) ;
 int WINE_FIXME (char*,scalar_t__,int ) ;
 int output_writeconsole (int *,scalar_t__) ;
 int wine_dbgstr_w (int const*) ;

__attribute__((used)) static void output_formatstring(const WCHAR *fmt, __ms_va_list va_args)
{
    WCHAR *str;
    DWORD len;

    SetLastError(NO_ERROR);
    len = FormatMessageW(FORMAT_MESSAGE_FROM_STRING|FORMAT_MESSAGE_ALLOCATE_BUFFER,
                         fmt, 0, 0, (WCHAR *)&str, 0, &va_args);
    if (len == 0 && GetLastError() != NO_ERROR)
    {
        WINE_FIXME("Could not format string: le=%u, fmt=%s\n", GetLastError(), wine_dbgstr_w(fmt));
        return;
    }
    output_writeconsole(str, len);
    LocalFree(str);
}
