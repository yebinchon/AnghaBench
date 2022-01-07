
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int tif_clientdata; } ;
struct TYPE_6__ {int * any; } ;
struct TYPE_7__ {int (* get ) (TYPE_2__*,int *,int ,int ) ;TYPE_5__* tif; TYPE_1__ put; } ;
typedef TYPE_2__ TIFFRGBAImage ;


 int TIFFErrorExt (int ,int ,char*) ;
 int TIFFFileName (TYPE_5__*) ;
 int stub1 (TYPE_2__*,int *,int ,int ) ;

int
TIFFRGBAImageGet(TIFFRGBAImage* img, uint32* raster, uint32 w, uint32 h)
{
    if (img->get == ((void*)0)) {
  TIFFErrorExt(img->tif->tif_clientdata, TIFFFileName(img->tif), "No \"get\" routine setup");
  return (0);
 }
 if (img->put.any == ((void*)0)) {
  TIFFErrorExt(img->tif->tif_clientdata, TIFFFileName(img->tif),
  "No \"put\" routine setupl; probably can not handle image format");
  return (0);
    }
    return (*img->get)(img, raster, w, h);
}
