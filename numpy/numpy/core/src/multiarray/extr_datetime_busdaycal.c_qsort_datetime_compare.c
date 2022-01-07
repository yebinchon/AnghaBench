
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_datetime ;



__attribute__((used)) static int
qsort_datetime_compare(const void *elem1, const void *elem2)
{
    npy_datetime e1 = *(const npy_datetime *)elem1;
    npy_datetime e2 = *(const npy_datetime *)elem2;

    return (e1 < e2) ? -1 : (e1 == e2) ? 0 : 1;
}
