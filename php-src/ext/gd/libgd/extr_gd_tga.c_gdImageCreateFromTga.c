
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * gdImagePtr ;
struct TYPE_5__ {int (* gd_free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;
typedef int FILE ;


 int * gdImageCreateFromTgaCtx (TYPE_1__*) ;
 TYPE_1__* gdNewFileCtx (int *) ;
 int stub1 (TYPE_1__*) ;

gdImagePtr gdImageCreateFromTga(FILE *fp)
{
 gdImagePtr image;
 gdIOCtx* in = gdNewFileCtx(fp);
 if (in == ((void*)0)) return ((void*)0);
 image = gdImageCreateFromTgaCtx(in);
 in->gd_free( in );
 return image;
}
