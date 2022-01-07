
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gpio_num_t ;
struct TYPE_3__ {scalar_t__ id; } ;


 int MP_ARRAY_SIZE (TYPE_1__*) ;
 int gpio_isr_handler_remove (scalar_t__) ;
 TYPE_1__* machine_pin_obj ;

void machine_pins_deinit(void) {
    for (int i = 0; i < MP_ARRAY_SIZE(machine_pin_obj); ++i) {
        if (machine_pin_obj[i].id != (gpio_num_t)-1) {
            gpio_isr_handler_remove(machine_pin_obj[i].id);
        }
    }
}
