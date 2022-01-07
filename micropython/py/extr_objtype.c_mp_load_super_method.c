
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qstr ;
typedef int mp_obj_t ;
struct TYPE_4__ {int * member_0; } ;
struct TYPE_5__ {int member_2; int member_1; TYPE_1__ member_0; } ;
typedef TYPE_2__ mp_obj_super_t ;


 int MP_OBJ_FROM_PTR (TYPE_2__*) ;
 int mp_load_method (int ,int ,int *) ;
 int mp_type_super ;

void mp_load_super_method(qstr attr, mp_obj_t *dest) {
    mp_obj_super_t super = {{&mp_type_super}, dest[1], dest[2]};
    mp_load_method(MP_OBJ_FROM_PTR(&super), attr, dest);
}
