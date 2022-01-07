
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_oneshot_layer () ;
 int oneshot_layer_changed_kb (int ) ;
 scalar_t__ oneshot_layer_data ;
 scalar_t__ oneshot_layer_time ;

void reset_oneshot_layer(void) {
    oneshot_layer_data = 0;



    oneshot_layer_changed_kb(get_oneshot_layer());
}
