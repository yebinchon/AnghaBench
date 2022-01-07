
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

int
pg_qsort_strcmp(const void *a, const void *b)
{
 return strcmp(*(const char *const *) a, *(const char *const *) b);
}
