
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FIND_IDENT ;
 int find_ident_under_cursor (int **,int ) ;

__attribute__((used)) static char *
vi_symbol_under_cursor()
{
    int len;
    char *symbolp;
    char *p;
    static char sniff_symbol[256];

    len = find_ident_under_cursor((char_u **)&symbolp, FIND_IDENT);

    if (len <= 0)
 return ((void*)0);
    for (p=sniff_symbol; len; len--)
 *p++ = *symbolp++;
    *p = '\0';
    return sniff_symbol;
}
