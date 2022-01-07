
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_uint_t ;
struct TYPE_4__ {int (* get_buffer ) (int ,int *,int ) ;} ;
struct TYPE_5__ {TYPE_1__ buffer_p; } ;
typedef TYPE_2__ mp_obj_type_t ;
typedef int mp_obj_t ;
typedef int mp_buffer_info_t ;


 TYPE_2__* mp_obj_get_type (int ) ;
 int stub1 (int ,int *,int ) ;

bool mp_get_buffer(mp_obj_t obj, mp_buffer_info_t *bufinfo, mp_uint_t flags) {
    mp_obj_type_t *type = mp_obj_get_type(obj);
    if (type->buffer_p.get_buffer == ((void*)0)) {
        return 0;
    }
    int ret = type->buffer_p.get_buffer(obj, bufinfo, flags);
    if (ret != 0) {
        return 0;
    }
    return 1;
}
