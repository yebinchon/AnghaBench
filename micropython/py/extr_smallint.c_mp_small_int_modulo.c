
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int_t ;



mp_int_t mp_small_int_modulo(mp_int_t dividend, mp_int_t divisor) {

    dividend %= divisor;
    if ((dividend < 0 && divisor > 0) || (dividend > 0 && divisor < 0)) {
        dividend += divisor;
    }
    return dividend;
}
