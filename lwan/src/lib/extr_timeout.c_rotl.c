
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wheel_t ;
typedef int const uint32_t ;


 int const WHEEL_T_BITS ;
 int assert (int) ;

__attribute__((used)) static inline wheel_t rotl(const wheel_t v, uint32_t n)
{
    assert(n < WHEEL_T_BITS);
    return (v << n) | (v >> (-n & (WHEEL_T_BITS - 1)));
}
