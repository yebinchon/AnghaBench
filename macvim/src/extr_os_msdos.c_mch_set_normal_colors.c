
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 char ESC ;
 char* T_ME ;
 int cterm_normal_bg_color ;
 int cterm_normal_fg_color ;
 int getdigits (char**) ;
 int orig_attr ;

void
mch_set_normal_colors()
{
    char_u *p;
    int n;

    cterm_normal_fg_color = (orig_attr & 0xf) + 1;
    cterm_normal_bg_color = ((orig_attr >> 4) & 0xf) + 1;
    if (T_ME[0] == ESC && T_ME[1] == '|')
    {
 p = T_ME + 2;
 n = getdigits(&p);
 if (*p == 'm' && n > 0)
 {
     cterm_normal_fg_color = (n & 0xf) + 1;
     cterm_normal_bg_color = ((n >> 4) & 0xf) + 1;
 }
    }
}
