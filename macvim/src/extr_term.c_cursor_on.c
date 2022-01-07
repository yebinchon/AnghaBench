
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int T_VE ;
 scalar_t__ cursor_is_off ;
 int out_str (int ) ;

void
cursor_on()
{
    if (cursor_is_off)
    {
 out_str(T_VE);
 cursor_is_off = FALSE;
    }
}
