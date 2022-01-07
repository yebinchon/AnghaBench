
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ feedback; int raw; } ;


 scalar_t__ HAPTIC_FEEDBACK_MAX ;
 scalar_t__ KEY_PRESS ;
 int eeconfig_update_haptic (int ) ;
 TYPE_1__ haptic_config ;
 int xprintf (char*,int) ;

void haptic_feedback_toggle(void) {
    haptic_config.feedback++;
    if (haptic_config.feedback >= HAPTIC_FEEDBACK_MAX) haptic_config.feedback = KEY_PRESS;
    xprintf("haptic_config.feedback = %u\n", !haptic_config.feedback);
    eeconfig_update_haptic(haptic_config.raw);
}
