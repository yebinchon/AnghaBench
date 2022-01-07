
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_DOUBLE ;


 int qsort (int *,size_t,int,int ) ;
 int qsort_compare ;

inline void sort_series(LONG_DOUBLE *series, size_t entries) {
    qsort(series, entries, sizeof(LONG_DOUBLE), qsort_compare);
}
