
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gdImagePtr ;
struct TYPE_5__ {int (* gd_free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;
typedef int FILE ;


 int gdImageCreateFromGd2PartCtx (TYPE_1__*,int,int,int,int) ;
 TYPE_1__* gdNewFileCtx (int *) ;
 int stub1 (TYPE_1__*) ;

gdImagePtr gdImageCreateFromGd2Part (FILE * inFile, int srcx, int srcy, int w, int h)
{
 gdImagePtr im;
 gdIOCtx *in = gdNewFileCtx(inFile);

 im = gdImageCreateFromGd2PartCtx(in, srcx, srcy, w, h);

 in->gd_free(in);

 return im;
}
