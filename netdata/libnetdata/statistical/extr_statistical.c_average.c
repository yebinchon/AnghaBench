
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_DOUBLE ;


 int NAN ;
 int sum_and_count (int const*,size_t,size_t*) ;
 scalar_t__ unlikely (int) ;

inline LONG_DOUBLE average(const LONG_DOUBLE *series, size_t entries) {
    size_t count = 0;
    LONG_DOUBLE sum = sum_and_count(series, entries, &count);

    if(unlikely(!count)) return NAN;
    return sum / (LONG_DOUBLE)count;
}
