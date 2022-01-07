
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GucSource ;


 scalar_t__ PGC_S_INTERACTIVE ;
 void* malloc (int) ;

bool
check_random_seed(double *newval, void **extra, GucSource source)
{
 *extra = malloc(sizeof(int));
 if (!*extra)
  return 0;

 *((int *) *extra) = (source >= PGC_S_INTERACTIVE);

 return 1;
}
