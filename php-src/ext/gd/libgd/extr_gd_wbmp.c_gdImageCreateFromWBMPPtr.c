
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gdImagePtr ;
struct TYPE_5__ {int (* gd_free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int gdImageCreateFromWBMPCtx (TYPE_1__*) ;
 TYPE_1__* gdNewDynamicCtxEx (int,void*,int ) ;
 int stub1 (TYPE_1__*) ;

gdImagePtr gdImageCreateFromWBMPPtr (int size, void *data)
{
 gdImagePtr im;
 gdIOCtx *in = gdNewDynamicCtxEx(size, data, 0);
 im = gdImageCreateFromWBMPCtx(in);
 in->gd_free(in);
 return im;
}
