
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gdImagePtr ;
struct TYPE_5__ {int (* gd_free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;
typedef int FILE ;


 int _gdImageGd2 (int ,TYPE_1__*,int,int) ;
 TYPE_1__* gdNewFileCtx (int *) ;
 int stub1 (TYPE_1__*) ;

void gdImageGd2 (gdImagePtr im, FILE * outFile, int cs, int fmt)
{
 gdIOCtx *out = gdNewFileCtx(outFile);

 _gdImageGd2(im, out, cs, fmt);

 out->gd_free(out);
}
