
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int_t ;


 int MP_SMALL_INT_MAX ;
 int MP_SMALL_INT_MIN ;

bool mp_small_int_mul_overflow(mp_int_t x, mp_int_t y) {

    if (x > 0) {
        if (y > 0) {
            if (x > (MP_SMALL_INT_MAX / y)) {
                return 1;
            }
        } else {
            if (y < (MP_SMALL_INT_MIN / x)) {
                return 1;
            }
        }
    } else {
        if (y > 0) {
            if (x < (MP_SMALL_INT_MIN / y)) {
                return 1;
            }
        } else {
            if (x != 0 && y < (MP_SMALL_INT_MAX / x)) {
                return 1;
            }
        }
    }
    return 0;
}
