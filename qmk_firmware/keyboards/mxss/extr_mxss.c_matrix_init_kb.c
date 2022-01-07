
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {scalar_t__ mode; int val; int raw; } ;
typedef TYPE_1__ fled_config ;
struct TYPE_4__ {scalar_t__ hue; int sat; } ;


 int EEPROM_FRONTLED_ADDR ;
 scalar_t__ FLED_CAPS_H ;
 int FLED_CAPS_S ;
 scalar_t__ FLED_INDI ;
 scalar_t__ FLED_RGB ;
 int FLED_VAL_STEP ;
 int USB_LED_CAPS_LOCK ;
 size_t biton32 (int ) ;
 scalar_t__ eeprom_is_valid () ;
 int eeprom_read_byte (int ) ;
 int eeprom_update_conf () ;
 scalar_t__ fled_mode ;
 int fled_val ;
 int * fleds ;
 int host_keyboard_leds () ;
 TYPE_2__* layer_colors ;
 int layer_state ;
 size_t lc_size ;
 int matrix_init_user () ;
 int sethsv (scalar_t__,int ,int,int *) ;
 int setrgb (int ,int ,int ,int *) ;

void matrix_init_kb(void) {

    if (eeprom_is_valid()) {
        fled_config fled_conf;
        fled_conf.raw = eeprom_read_byte(EEPROM_FRONTLED_ADDR);
        fled_mode = fled_conf.mode;
        fled_val = fled_conf.val * FLED_VAL_STEP;

    } else {
        fled_mode = FLED_RGB;
        fled_val = 10 * FLED_VAL_STEP;
        eeprom_update_conf();
    }


    setrgb(0, 0, 0, &fleds[0]);
    setrgb(0, 0, 0, &fleds[1]);


    if (fled_mode == FLED_INDI) {

        if (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK))
            sethsv(FLED_CAPS_H, FLED_CAPS_S, fled_val, &fleds[0]);



        uint8_t layer = biton32(layer_state);
        if (layer < lc_size && !(layer_colors[layer].hue == 0 && layer_colors[layer].hue == 0))
            sethsv(layer_colors[layer].hue, layer_colors[layer].sat, fled_val, &fleds[1]);
    }

 matrix_init_user();
}
