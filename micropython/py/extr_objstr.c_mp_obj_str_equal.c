
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_obj_t ;


 int GET_STR_DATA_LEN (scalar_t__,int ,scalar_t__) ;
 int GET_STR_HASH (scalar_t__,scalar_t__) ;
 int d1 ;
 int d2 ;
 scalar_t__ h1 ;
 scalar_t__ h2 ;
 scalar_t__ l1 ;
 scalar_t__ l2 ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ mp_obj_is_qstr (scalar_t__) ;

bool mp_obj_str_equal(mp_obj_t s1, mp_obj_t s2) {
    if (mp_obj_is_qstr(s1) && mp_obj_is_qstr(s2)) {
        return s1 == s2;
    } else {
        GET_STR_HASH(s1, h1);
        GET_STR_HASH(s2, h2);

        if (h1 != 0 && h2 != 0 && h1 != h2) {
            return 0;
        }
        GET_STR_DATA_LEN(s1, d1, l1);
        GET_STR_DATA_LEN(s2, d2, l2);
        if (l1 != l2) {
            return 0;
        }
        return memcmp(d1, d2, l1) == 0;
    }
}
