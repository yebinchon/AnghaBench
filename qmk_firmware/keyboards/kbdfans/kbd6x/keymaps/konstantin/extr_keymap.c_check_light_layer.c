
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ IS_HOST_LED_ON (int ) ;
 scalar_t__ IS_LAYER_ON_STATE (int ,int ) ;
 int L_FN ;
 int USB_LED_CAPS_LOCK ;
 int caps_light () ;
 int fn_light () ;
 int restore_light () ;

__attribute__((used)) static void check_light_layer(uint32_t state) {
    if (IS_LAYER_ON_STATE(state, L_FN)) {
        fn_light();
    } else if (IS_HOST_LED_ON(USB_LED_CAPS_LOCK)) {
        caps_light();
    } else {
        restore_light();
    }
}
