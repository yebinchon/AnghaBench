
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_ME ;
 int T_OP ;
 scalar_t__ cterm_normal_bg_color ;
 scalar_t__ cterm_normal_fg_bold ;
 scalar_t__ cterm_normal_fg_color ;
 int out_str (int ) ;
 int screen_attr ;
 int t_colors ;

void
reset_cterm_colors()
{
    if (t_colors > 1)
    {

 if (cterm_normal_fg_color > 0 || cterm_normal_bg_color > 0)
 {
     out_str(T_OP);
     screen_attr = -1;
 }
 if (cterm_normal_fg_bold)
 {
     out_str(T_ME);
     screen_attr = -1;
 }
    }
}
