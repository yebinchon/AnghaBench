
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {size_t row; size_t col; } ;
typedef TYPE_1__ keypos_t ;


 int *** keymaps ;
 int pgm_read_word (int *) ;

__attribute__((weak)) uint16_t keymap_key_to_keycode(uint8_t layer, keypos_t key) {

    return pgm_read_word(&keymaps[(layer)][(key.row)][(key.col)]);
}
