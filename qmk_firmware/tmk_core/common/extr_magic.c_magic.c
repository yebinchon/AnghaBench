
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int layer_state_t ;
struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int raw; } ;


 TYPE_2__ debug_config ;
 int default_layer_set (int ) ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_debug () ;
 scalar_t__ eeconfig_read_default_layer () ;
 int eeconfig_read_keymap () ;
 TYPE_1__ keymap_config ;

void magic(void) {

    if (!eeconfig_is_enabled()) {
        eeconfig_init();
    }


    debug_config.raw = eeconfig_read_debug();


    keymap_config.raw = eeconfig_read_keymap();

    uint8_t default_layer = 0;
    default_layer = eeconfig_read_default_layer();
    default_layer_set((layer_state_t)default_layer);
}
