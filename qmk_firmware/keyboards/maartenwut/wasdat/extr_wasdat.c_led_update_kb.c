
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_lock; int scroll_lock; int caps_lock; } ;
typedef TYPE_1__ led_t ;


 int B0 ;
 int B1 ;
 int B2 ;
 scalar_t__ led_update_user (TYPE_1__) ;
 int writePin (int ,int) ;

bool led_update_kb(led_t led_state) {
    if(led_update_user(led_state)) {
        writePin(B0, !led_state.caps_lock);
        writePin(B1, !led_state.scroll_lock);
        writePin(B2, !led_state.num_lock);
    }

    return 1;
}
