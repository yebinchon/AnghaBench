
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int gdImagePtr ;
struct TYPE_6__ {int (* gd_free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int _gdImageWBMPCtx (int ,int,TYPE_1__*) ;
 void* gdDPExtractData (TYPE_1__*,int*) ;
 TYPE_1__* gdNewDynamicCtx (int,int *) ;
 int stub1 (TYPE_1__*) ;

void * gdImageWBMPPtr (gdImagePtr im, int *size, int fg)
{
 void *rv;
 gdIOCtx *out = gdNewDynamicCtx(2048, ((void*)0));
 if (!_gdImageWBMPCtx(im, fg, out)) {
  rv = gdDPExtractData(out, size);
 } else {
  rv = ((void*)0);
 }
 out->gd_free(out);

 return rv;
}
