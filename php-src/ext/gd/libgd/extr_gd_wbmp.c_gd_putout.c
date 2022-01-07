
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int gdPutC (int,int *) ;

void gd_putout (int i, void *out)
{
 gdPutC(i, (gdIOCtx *) out);
}
