
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NUL ;
 scalar_t__* T_VE ;
 scalar_t__* T_VS ;
 int out_str (scalar_t__*) ;
 int screen_start () ;

void
scroll_start()
{
    if (*T_VS != NUL)
    {
 out_str(T_VS);
 out_str(T_VE);
 screen_start();
    }
}
