
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TRUE ;
 int T_VI ;
 scalar_t__ cursor_is_off ;
 scalar_t__ full_screen ;
 int out_str (int ) ;

void
cursor_off()
{
    if (full_screen)
    {
 if (!cursor_is_off)
     out_str(T_VI);
 cursor_is_off = TRUE;
    }
}
