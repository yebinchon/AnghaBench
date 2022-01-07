
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nkro; int swap_backslash_backspace; int swap_grave_esc; int no_gui; int swap_ralt_rgui; int swap_lalt_lgui; int swap_rctl_rgui; int swap_lctl_lgui; int capslock_to_control; int swap_control_capslock; int raw; } ;
typedef TYPE_1__ keymap_config_t ;
struct TYPE_5__ {int mouse; int keyboard; int matrix; int enable; int raw; } ;
typedef TYPE_2__ debug_config_t ;
struct TYPE_6__ {int level; int enable; int raw; } ;
typedef TYPE_3__ backlight_config_t ;


 int eeconfig_read_backlight () ;
 int eeconfig_read_debug () ;
 int eeconfig_read_default_layer () ;
 int eeconfig_read_keymap () ;
 int print (char*) ;
 int print_dec (int ) ;
 int print_hex8 (int ) ;

__attribute__((used)) static void print_eeconfig(void) {



    print("default_layer: ");
    print_dec(eeconfig_read_default_layer());
    print("\n");

    debug_config_t dc;
    dc.raw = eeconfig_read_debug();
    print("debug_config.raw: ");
    print_hex8(dc.raw);
    print("\n");
    print(".enable: ");
    print_dec(dc.enable);
    print("\n");
    print(".matrix: ");
    print_dec(dc.matrix);
    print("\n");
    print(".keyboard: ");
    print_dec(dc.keyboard);
    print("\n");
    print(".mouse: ");
    print_dec(dc.mouse);
    print("\n");

    keymap_config_t kc;
    kc.raw = eeconfig_read_keymap();
    print("keymap_config.raw: ");
    print_hex8(kc.raw);
    print("\n");
    print(".swap_control_capslock: ");
    print_dec(kc.swap_control_capslock);
    print("\n");
    print(".capslock_to_control: ");
    print_dec(kc.capslock_to_control);
    print("\n");
    print(".swap_lctl_lgui: ");
    print_dec(kc.swap_lctl_lgui);
    print("\n");
    print(".swap_rctl_rgui: ");
    print_dec(kc.swap_rctl_rgui);
    print("\n");
    print(".swap_lalt_lgui: ");
    print_dec(kc.swap_lalt_lgui);
    print("\n");
    print(".swap_ralt_rgui: ");
    print_dec(kc.swap_ralt_rgui);
    print("\n");
    print(".no_gui: ");
    print_dec(kc.no_gui);
    print("\n");
    print(".swap_grave_esc: ");
    print_dec(kc.swap_grave_esc);
    print("\n");
    print(".swap_backslash_backspace: ");
    print_dec(kc.swap_backslash_backspace);
    print("\n");
    print(".nkro: ");
    print_dec(kc.nkro);
    print("\n");
}
