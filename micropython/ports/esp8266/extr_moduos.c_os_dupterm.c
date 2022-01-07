
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const mp_obj_t ;
struct TYPE_3__ {int const (* var ) (size_t,int const*) ;} ;
struct TYPE_4__ {TYPE_1__ fun; } ;


 int * mp_obj_get_type (int const) ;
 TYPE_2__ mp_uos_dupterm_obj ;
 int pyb_uart_type ;
 int const stub1 (size_t,int const*) ;
 int uart_attached_to_dupterm ;

mp_obj_t os_dupterm(size_t n_args, const mp_obj_t *args) {
    mp_obj_t prev_obj = mp_uos_dupterm_obj.fun.var(n_args, args);
    if (mp_obj_get_type(args[0]) == &pyb_uart_type) {
        ++uart_attached_to_dupterm;
    }
    if (mp_obj_get_type(prev_obj) == &pyb_uart_type) {
        --uart_attached_to_dupterm;
    }
    return prev_obj;
}
