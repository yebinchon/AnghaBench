
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int * gdNewDynamicCtxEx (int,void*,int) ;

gdIOCtx * gdNewDynamicCtx (int initialSize, void *data)
{
 return gdNewDynamicCtxEx(initialSize, data, 1);
}
