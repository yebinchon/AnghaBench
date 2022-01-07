
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_DOUBLE ;


 int * mallocz (int) ;
 int memcpy (int *,int const*,int) ;

inline LONG_DOUBLE *copy_series(const LONG_DOUBLE *series, size_t entries) {
    LONG_DOUBLE *copy = mallocz(sizeof(LONG_DOUBLE) * entries);
    memcpy(copy, series, sizeof(LONG_DOUBLE) * entries);
    return copy;
}
