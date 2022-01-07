
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buzz; } ;


 TYPE_1__ haptic_config ;
 int haptic_set_buzz (int) ;

void haptic_buzz_toggle(void) {
    bool buzz_stat = !haptic_config.buzz;
    haptic_config.buzz = buzz_stat;
    haptic_set_buzz(buzz_stat);
}
