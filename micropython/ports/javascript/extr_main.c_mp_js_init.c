
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 size_t MP_ARRAY_SIZE (int *) ;
 int MP_OBJ_NEW_QSTR (int ) ;
 int MP_QSTR_ ;
 int gc_init (char*,char*) ;
 scalar_t__ malloc (int) ;
 int mp_init () ;
 int mp_obj_list_append (int ,int ) ;
 int mp_obj_list_init (int ,int ) ;
 int mp_pystack_init (int *,int *) ;
 int mp_sys_argv ;
 int mp_sys_path ;
 char* stack_top ;

void mp_js_init(int heap_size) {
    int stack_dummy;
    stack_top = (char*)&stack_dummy;
    mp_init();

    mp_obj_list_init(mp_sys_path, 0);
    mp_obj_list_append(mp_sys_path, MP_OBJ_NEW_QSTR(MP_QSTR_));
    mp_obj_list_init(mp_sys_argv, 0);
}
