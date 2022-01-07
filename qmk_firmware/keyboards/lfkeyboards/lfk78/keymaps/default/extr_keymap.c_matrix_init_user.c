
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_layer_set (int) ;
 int eeconfig_read_default_layer () ;
 int eeconfig_update_default_layer (int) ;

void matrix_init_user(void) {

    if(eeconfig_read_default_layer() > 1){
        eeconfig_update_default_layer(1);
        default_layer_set(1);
    }
}
