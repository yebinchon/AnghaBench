
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_lock; } ;
typedef TYPE_1__ led_t ;


 int layer_off (int) ;
 int layer_on (int) ;

bool led_update_user(led_t led_state) {
    if (led_state.num_lock) {
        layer_on(1);
    } else {
        layer_off(1);
    }
    return 1;
}
