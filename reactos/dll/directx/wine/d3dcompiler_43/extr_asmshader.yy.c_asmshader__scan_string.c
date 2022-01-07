
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YY_BUFFER_STATE ;


 scalar_t__ strlen (char const*) ;
 int yy_scan_bytes (char const*,int) ;

YY_BUFFER_STATE yy_scan_string (const char * yystr )
{

 return yy_scan_bytes( yystr, (int) strlen(yystr) );
}
