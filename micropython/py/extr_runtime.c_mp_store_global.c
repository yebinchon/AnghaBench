
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qstr ;
typedef int mp_obj_t ;


 int DEBUG_OP_printf (char*,int ,int ) ;
 int MP_OBJ_FROM_PTR (int ) ;
 int MP_OBJ_NEW_QSTR (int ) ;
 int mp_globals_get () ;
 int mp_obj_dict_store (int ,int ,int ) ;
 int qstr_str (int ) ;

void mp_store_global(qstr qst, mp_obj_t obj) {
    DEBUG_OP_printf("store global %s <- %p\n", qstr_str(qst), obj);
    mp_obj_dict_store(MP_OBJ_FROM_PTR(mp_globals_get()), MP_OBJ_NEW_QSTR(qst), obj);
}
