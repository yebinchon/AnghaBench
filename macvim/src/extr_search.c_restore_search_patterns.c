
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pat; } ;


 int SET_NO_HLSEARCH (int ) ;
 int last_idx ;
 scalar_t__ save_level ;
 int saved_last_idx ;
 int saved_no_hlsearch ;
 TYPE_1__* saved_spats ;
 int set_vv_searchforward () ;
 TYPE_1__* spats ;
 int vim_free (int ) ;

void
restore_search_patterns()
{
    if (--save_level == 0)
    {
 vim_free(spats[0].pat);
 spats[0] = saved_spats[0];



 vim_free(spats[1].pat);
 spats[1] = saved_spats[1];
 last_idx = saved_last_idx;



    }
}
