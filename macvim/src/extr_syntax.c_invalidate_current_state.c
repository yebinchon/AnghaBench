
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ga_itemsize; } ;


 int clear_current_state () ;
 int * current_next_list ;
 TYPE_1__ current_state ;
 int keepend_level ;

__attribute__((used)) static void
invalidate_current_state()
{
    clear_current_state();
    current_state.ga_itemsize = 0;
    current_next_list = ((void*)0);
    keepend_level = -1;
}
