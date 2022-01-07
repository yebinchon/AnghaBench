
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MUL_NO_OVERFLOW ;
 size_t SIZE_MAX ;

__attribute__((used)) static inline bool umull_overflow(size_t a, size_t b, size_t *out)
{
    if ((a >= MUL_NO_OVERFLOW || b >= MUL_NO_OVERFLOW) && a > 0 &&
        SIZE_MAX / a < b)
        return 1;
    *out = a * b;
    return 0;
}
