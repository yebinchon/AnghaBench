
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mp_obj_t ;
typedef int * mp_call_fun_t ;
struct TYPE_2__ {int * call; } ;


 TYPE_1__* mp_obj_get_type (int ) ;
 int * mp_obj_instance_call ;
 int mp_obj_instance_is_callable (int ) ;

bool mp_obj_is_callable(mp_obj_t o_in) {
    mp_call_fun_t call = mp_obj_get_type(o_in)->call;
    if (call != mp_obj_instance_call) {
        return call != ((void*)0);
    }
    return mp_obj_instance_is_callable(o_in);
}
