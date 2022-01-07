
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_print_t ;
typedef int mp_print_kind_t ;
struct TYPE_3__ {int name; int (* print ) (int *,int ,int ) ;} ;
typedef TYPE_1__ mp_obj_type_t ;
typedef int mp_obj_t ;


 int MP_OBJ_NULL ;
 int MP_STACK_CHECK () ;
 TYPE_1__* mp_obj_get_type (int ) ;
 int mp_print_str (int const*,char*) ;
 int mp_printf (int const*,char*,int ) ;
 int stub1 (int *,int ,int ) ;

void mp_obj_print_helper(const mp_print_t *print, mp_obj_t o_in, mp_print_kind_t kind) {

    MP_STACK_CHECK();

    if (o_in == MP_OBJ_NULL) {
        mp_print_str(print, "(nil)");
        return;
    }

    mp_obj_type_t *type = mp_obj_get_type(o_in);
    if (type->print != ((void*)0)) {
        type->print((mp_print_t*)print, o_in, kind);
    } else {
        mp_printf(print, "<%q>", type->name);
    }
}
