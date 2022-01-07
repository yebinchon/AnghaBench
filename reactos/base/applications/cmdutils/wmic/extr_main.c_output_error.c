
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int ARRAY_SIZE (char*) ;
 int GetModuleHandleW (int *) ;
 int GetStdHandle (int ) ;
 int LoadStringW (int ,int,char*,int ) ;
 int STD_ERROR_HANDLE ;
 int output_string (int ,char const*,char*) ;

__attribute__((used)) static int output_error( int msg )
{
    static const WCHAR fmtW[] = {'%','s',0};
    WCHAR buffer[8192];

    LoadStringW( GetModuleHandleW(((void*)0)), msg, buffer, ARRAY_SIZE(buffer));
    return output_string( GetStdHandle(STD_ERROR_HANDLE), fmtW, buffer );
}
