
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int feedback; int enable; } ;


 TYPE_1__ haptic_config ;

uint8_t haptic_get_feedback(void) {
    if (!haptic_config.enable) {
        return 0;
    }
    return haptic_config.feedback;
}
