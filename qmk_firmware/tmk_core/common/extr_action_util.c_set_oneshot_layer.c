
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int get_oneshot_layer () ;
 int layer_on (int) ;
 int oneshot_layer_changed_kb (int ) ;
 int oneshot_layer_data ;
 int oneshot_layer_time ;
 int timer_read () ;

void set_oneshot_layer(uint8_t layer, uint8_t state) {
    oneshot_layer_data = layer << 3 | state;
    layer_on(layer);



    oneshot_layer_changed_kb(get_oneshot_layer());
}
