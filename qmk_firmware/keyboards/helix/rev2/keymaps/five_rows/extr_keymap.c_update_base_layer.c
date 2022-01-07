
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _AUX ;
 int _KAUX ;
 int _KEYPAD ;
 int current_default_layer ;
 int default_layer_set (unsigned long) ;
 int eeconfig_update_default_layer (unsigned long) ;
 int layer_invert (int ) ;
 int layer_off (int ) ;

void update_base_layer(int base)
{
    if( current_default_layer != base ) {
        eeconfig_update_default_layer(1UL<<base);
        default_layer_set(1UL<<base);
        layer_off(_AUX);
        layer_off(_KAUX);
    } else {
        if( base < _KEYPAD )
            layer_invert(_AUX);
        else
            layer_invert(_KAUX);
    }
}
