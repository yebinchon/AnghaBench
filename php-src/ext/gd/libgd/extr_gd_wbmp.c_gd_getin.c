
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int gdGetC (int *) ;

int gd_getin (void *in)
{
 return (gdGetC((gdIOCtx *) in));
}
