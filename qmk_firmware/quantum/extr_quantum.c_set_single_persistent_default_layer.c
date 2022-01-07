
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int PLAY_SONG (int ) ;
 int default_layer_set (unsigned int) ;
 int * default_layer_songs ;
 int eeconfig_update_default_layer (unsigned int) ;

void set_single_persistent_default_layer(uint8_t default_layer) {



    eeconfig_update_default_layer(1U << default_layer);
    default_layer_set(1U << default_layer);
}
