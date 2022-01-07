
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_DOUBLE ;


 int sum_and_count (int const*,size_t,int *) ;

inline LONG_DOUBLE sum(const LONG_DOUBLE *series, size_t entries) {
    return sum_and_count(series, entries, ((void*)0));
}
