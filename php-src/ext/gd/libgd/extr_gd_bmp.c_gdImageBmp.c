
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gdImagePtr ;
struct TYPE_5__ {int (* gd_free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;
typedef int FILE ;


 int gdImageBmpCtx (int ,TYPE_1__*,int) ;
 TYPE_1__* gdNewFileCtx (int *) ;
 int stub1 (TYPE_1__*) ;

void gdImageBmp(gdImagePtr im, FILE *outFile, int compression)
{
 gdIOCtx *out = gdNewFileCtx(outFile);
 if (out == ((void*)0)) return;
 gdImageBmpCtx(im, out, compression);
 out->gd_free(out);
}
