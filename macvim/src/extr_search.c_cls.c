
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DBCS_KOR ;
 int F_BLANK ;
 int NUL ;
 scalar_t__ cls_bigword ;
 int dbcs_class (unsigned int,int) ;
 scalar_t__ enc_dbcs ;
 scalar_t__ enc_utf8 ;
 int gchar_cursor () ;
 scalar_t__ p_altkeymap ;
 int utf_class (int) ;
 scalar_t__ vim_iswordc (int) ;

__attribute__((used)) static int
cls()
{
    int c;

    c = gchar_cursor();




    if (c == ' ' || c == '\t' || c == NUL)
 return 0;
    if (cls_bigword)
 return 1;

    if (vim_iswordc(c))
 return 2;
    return 1;
}
