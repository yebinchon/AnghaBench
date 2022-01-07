
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {scalar_t__ image; TYPE_1__ base; int string; } ;
typedef TYPE_2__ string_image_facade_t ;
typedef size_t mp_uint_t ;
typedef scalar_t__ mp_obj_t ;


 scalar_t__ MP_OBJ_NULL ;
 scalar_t__ MP_OBJ_SENTINEL ;
 int microbit_image_set_from_char (scalar_t__,char const) ;
 size_t mp_get_index (int ,size_t,scalar_t__,int) ;
 char* mp_obj_str_get_data (int ,size_t*) ;

__attribute__((used)) static mp_obj_t string_image_facade_subscr(mp_obj_t self_in, mp_obj_t index_in, mp_obj_t value) {
    if (value == MP_OBJ_SENTINEL) {

        string_image_facade_t *self = (string_image_facade_t *)self_in;
        size_t len;
        const char *text = mp_obj_str_get_data(self->string, &len);
        mp_uint_t index = mp_get_index(self->base.type, len, index_in, 0);
        microbit_image_set_from_char(self->image, text[index]);
        return self->image;
    } else {
        return MP_OBJ_NULL;
    }
}
