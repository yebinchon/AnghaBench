
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stateitem_T ;
struct TYPE_2__ {int ga_itemsize; int ga_growsize; } ;


 TYPE_1__ current_state ;

__attribute__((used)) static void
validate_current_state()
{
    current_state.ga_itemsize = sizeof(stateitem_T);
    current_state.ga_growsize = 3;
}
