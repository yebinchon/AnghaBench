
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_2__ {int enable; void* mode; void* feedback; int raw; void* dwell; } ;


 void* HAPTIC_FEEDBACK_DEFAULT ;
 void* HAPTIC_MODE_DEFAULT ;
 void* SOLENOID_DEFAULT_DWELL ;
 int eeconfig_update_haptic (int ) ;
 TYPE_1__ haptic_config ;
 int xprintf (char*,void*) ;

void haptic_reset(void) {
    haptic_config.enable = 1;
    uint8_t feedback = HAPTIC_FEEDBACK_DEFAULT;
    haptic_config.feedback = feedback;
    eeconfig_update_haptic(haptic_config.raw);
    xprintf("haptic_config.feedback = %u\n", haptic_config.feedback);
    xprintf("haptic_config.mode = %u\n", haptic_config.mode);
}
