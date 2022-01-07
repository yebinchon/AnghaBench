
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ layer; scalar_t__ default_layer; scalar_t__ mods; scalar_t__ leds; scalar_t__ suspended; scalar_t__ backlight_level; int user_data; } ;
typedef TYPE_1__ visualizer_keyboard_status_t ;


 int VISUALIZER_USER_DATA_SIZE ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static bool same_status(visualizer_keyboard_status_t* status1, visualizer_keyboard_status_t* status2) {
    return status1->layer == status2->layer && status1->default_layer == status2->default_layer && status1->mods == status2->mods && status1->leds == status2->leds && status1->suspended == status2->suspended






        ;
}
