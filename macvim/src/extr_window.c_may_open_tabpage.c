
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tab; } ;


 int FAIL ;
 TYPE_1__ cmdmod ;
 int postponed_split_tab ;
 int win_new_tabpage (int) ;

int
may_open_tabpage()
{
    int n = (cmdmod.tab == 0) ? postponed_split_tab : cmdmod.tab;

    if (n != 0)
    {
 cmdmod.tab = 0;
 postponed_split_tab = 0;
 return win_new_tabpage(n);
    }
    return FAIL;
}
