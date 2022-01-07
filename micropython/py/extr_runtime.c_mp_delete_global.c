
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qstr ;


 int DEBUG_OP_printf (char*,int ) ;
 int MP_OBJ_FROM_PTR (int ) ;
 int MP_OBJ_NEW_QSTR (int ) ;
 int mp_globals_get () ;
 int mp_obj_dict_delete (int ,int ) ;
 int qstr_str (int ) ;

void mp_delete_global(qstr qst) {
    DEBUG_OP_printf("delete global %s\n", qstr_str(qst));

    mp_obj_dict_delete(MP_OBJ_FROM_PTR(mp_globals_get()), MP_OBJ_NEW_QSTR(qst));
}
