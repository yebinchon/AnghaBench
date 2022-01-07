
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;
typedef int mp_uint_t ;



mp_uint_t unichar_xdigit_value(unichar c) {

    mp_uint_t n = c - '0';
    if (n > 9) {
        n &= ~('a' - 'A');
        n -= ('A' - ('9' + 1));
    }
    return n;
}
