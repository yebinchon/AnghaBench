
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gdSourcePtr ;
typedef int gdImagePtr ;
struct TYPE_5__ {int (* gd_free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int gdImageCreateFromGifCtx (TYPE_1__*) ;
 TYPE_1__* gdNewSSCtx (int ,int *) ;
 int stub1 (TYPE_1__*) ;

gdImagePtr gdImageCreateFromGifSource(gdSourcePtr inSource)
{
 gdIOCtx *in = gdNewSSCtx(inSource, ((void*)0));
 gdImagePtr im;

 im = gdImageCreateFromGifCtx(in);

 in->gd_free(in);

 return im;
}
