
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int mp_obj_t ;
struct TYPE_2__ {int phys_port; } ;


 TYPE_1__* mp_obj_get_pin_obj (int ) ;

uint mp_obj_get_pin(mp_obj_t pin_in) {
    return mp_obj_get_pin_obj(pin_in)->phys_port;
}
