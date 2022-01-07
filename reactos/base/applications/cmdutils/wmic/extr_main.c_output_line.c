
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;


 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int output_string (int ,char const*,int ,char const*) ;

__attribute__((used)) static int output_line( const WCHAR *str, ULONG column_width )
{
    static const WCHAR fmtW[] = {'%','-','*','s','\r','\n',0};
    return output_string( GetStdHandle(STD_OUTPUT_HANDLE), fmtW, column_width, str );
}
