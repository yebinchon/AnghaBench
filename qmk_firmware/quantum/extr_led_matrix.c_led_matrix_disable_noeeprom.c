
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; } ;


 TYPE_1__ led_matrix_config ;

void led_matrix_disable_noeeprom(void) { led_matrix_config.enable = 0; }
