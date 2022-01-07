
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int mp_call_function_n_kw (int ,int,int ,int *) ;

mp_obj_t mp_call_function_1(mp_obj_t fun, mp_obj_t arg) {
    return mp_call_function_n_kw(fun, 1, 0, &arg);
}
