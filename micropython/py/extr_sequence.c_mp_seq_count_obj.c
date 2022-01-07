
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int MP_OBJ_NEW_SMALL_INT (size_t) ;
 scalar_t__ mp_obj_equal (int const,int ) ;

mp_obj_t mp_seq_count_obj(const mp_obj_t *items, size_t len, mp_obj_t value) {
    size_t count = 0;
    for (size_t i = 0; i < len; i++) {
         if (mp_obj_equal(items[i], value)) {
              count++;
         }
    }


    return MP_OBJ_NEW_SMALL_INT(count);
}
