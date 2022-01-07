
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int oneshot_fullfillment_t ;


 int get_oneshot_layer () ;
 int get_oneshot_layer_state () ;
 int layer_off (int ) ;
 int oneshot_layer_data ;
 int reset_oneshot_layer () ;

void clear_oneshot_layer_state(oneshot_fullfillment_t state) {
    uint8_t start_state = oneshot_layer_data;
    oneshot_layer_data &= ~state;
    if (!get_oneshot_layer_state() && start_state != oneshot_layer_data) {
        layer_off(get_oneshot_layer());
        reset_oneshot_layer();
    }
}
