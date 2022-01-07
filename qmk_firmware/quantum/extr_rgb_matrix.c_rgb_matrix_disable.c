
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eeconfig_update_rgb_matrix () ;
 int rgb_matrix_disable_noeeprom () ;

void rgb_matrix_disable(void) {
    rgb_matrix_disable_noeeprom();
    eeconfig_update_rgb_matrix();
}
