
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t ta_calc_prealloc_elems(size_t nextidx)
{
    if (nextidx >= ((size_t)-1) / 2 - 1)
        return (size_t)-1;
    return (nextidx + 1) * 2;
}
