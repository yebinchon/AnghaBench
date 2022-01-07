
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint64 ;
typedef size_t NPY_DATETIMEUNIT ;


 int* _datetime_factors ;

__attribute__((used)) static npy_uint64
get_datetime_units_factor(NPY_DATETIMEUNIT bigbase, NPY_DATETIMEUNIT littlebase)
{
    npy_uint64 factor = 1;
    NPY_DATETIMEUNIT unit = bigbase;

    while (unit < littlebase) {
        factor *= _datetime_factors[unit];





        if (factor&0xff00000000000000ULL) {
            return 0;
        }
        ++unit;
    }
    return factor;
}
