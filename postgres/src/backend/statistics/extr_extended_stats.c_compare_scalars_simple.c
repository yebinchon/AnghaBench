
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef int Datum ;


 int compare_datums_simple (int ,int ,int ) ;

int
compare_scalars_simple(const void *a, const void *b, void *arg)
{
 return compare_datums_simple(*(Datum *) a,
         *(Datum *) b,
         (SortSupport) arg);
}
