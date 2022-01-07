
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ long_i ;
typedef int char_u ;
struct TYPE_4__ {scalar_t__ in_use; scalar_t__ starting; } ;
struct TYPE_3__ {int flags; int ** def_val; } ;


 int P_WAS_SET ;
 long TRUE ;
 size_t VI_DEFAULT ;
 int findoption (int *) ;
 TYPE_2__ gui ;
 long mch_can_restore_icon () ;
 long mch_can_restore_title () ;
 TYPE_1__* options ;
 long p_icon ;
 long p_title ;

void
set_title_defaults()
{
    int idx1;
    long val;






    idx1 = findoption((char_u *)"title");
    if (idx1 >= 0 && !(options[idx1].flags & P_WAS_SET))
    {





     val = mch_can_restore_title();
 options[idx1].def_val[VI_DEFAULT] = (char_u *)(long_i)val;
 p_title = val;
    }
    idx1 = findoption((char_u *)"icon");
    if (idx1 >= 0 && !(options[idx1].flags & P_WAS_SET))
    {





     val = mch_can_restore_icon();
 options[idx1].def_val[VI_DEFAULT] = (char_u *)(long_i)val;
 p_icon = val;
    }
}
