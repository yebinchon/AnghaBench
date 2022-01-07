
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* flush ) () ;} ;


 TYPE_1__ led_matrix_driver ;
 int stub1 () ;

void led_matrix_update_pwm_buffers(void) { led_matrix_driver.flush(); }
