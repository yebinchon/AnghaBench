
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bomW ;
typedef int WCHAR ;
typedef int ULONG ;
typedef int DWORD ;


 int ARRAY_SIZE (int*) ;
 int FALSE ;
 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int WriteConsoleW (int ,int*,int,int*,int *) ;
 int WriteFile (int ,int const*,int,int*,int ) ;
 int snprintfW (int*,int ,int const*,int ,int const*) ;

__attribute__((used)) static int output_header( const WCHAR *prop, ULONG column_width )
{
    static const WCHAR bomW[] = {0xfeff}, fmtW[] = {'%','-','*','s','\r','\n',0};
    int len;
    DWORD count;
    WCHAR buffer[8192];

    len = snprintfW( buffer, ARRAY_SIZE(buffer), fmtW, column_width, prop );

    if (!WriteConsoleW( GetStdHandle(STD_OUTPUT_HANDLE), buffer, len, &count, ((void*)0) ))
    {
        WriteFile( GetStdHandle(STD_OUTPUT_HANDLE), bomW, sizeof(bomW), &count, FALSE );
        WriteFile( GetStdHandle(STD_OUTPUT_HANDLE), buffer, len * sizeof(WCHAR), &count, FALSE );
        count += sizeof(bomW);
    }

    return count;
}
