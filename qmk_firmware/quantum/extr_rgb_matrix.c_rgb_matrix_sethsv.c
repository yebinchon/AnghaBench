
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int eeconfig_update_rgb_matrix () ;
 int rgb_matrix_sethsv_noeeprom (int ,int ,int ) ;

void rgb_matrix_sethsv(uint16_t hue, uint8_t sat, uint8_t val) {
    rgb_matrix_sethsv_noeeprom(hue, sat, val);
    eeconfig_update_rgb_matrix();
}
