
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int enable; } ;


 int dprintf (char*,...) ;
 TYPE_1__ haptic_config ;

void eeconfig_debug_haptic(void) {
    dprintf("haptic_config eprom\n");
    dprintf("haptic_config.enable = %d\n", haptic_config.enable);
    dprintf("haptic_config.mode = %d\n", haptic_config.mode);
}
