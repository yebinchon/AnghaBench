
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int val; } ;


 TYPE_1__ led_matrix_config ;

void led_matrix_set_value_noeeprom(uint8_t val) { led_matrix_config.val = val; }
