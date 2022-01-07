
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nkro; } ;


 int battery_init () ;
 TYPE_1__ keymap_config ;
 int rn42_nkro_last ;

void rn42_task_init(void)
{
    battery_init();



}
