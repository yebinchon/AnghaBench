
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* set_value_all ) (int ) ;} ;


 TYPE_1__ led_matrix_driver ;
 int stub1 (int ) ;

void led_matrix_set_index_value_all(uint8_t value) { led_matrix_driver.set_value_all(value); }
