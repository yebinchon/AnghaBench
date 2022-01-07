
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_natural_sort_cmp (char*,char*) ;

__attribute__((used)) static int cmp_filename(const void *a, const void *b)
{
    return mp_natural_sort_cmp(*(char **)a, *(char **)b);
}
