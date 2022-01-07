
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; } ;


 TYPE_1__ rgb_matrix_config ;

void rgb_matrix_mode_noeeprom(uint8_t mode) { rgb_matrix_config.mode = mode; }
