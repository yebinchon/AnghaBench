
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tif_mode; int tif_name; int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;


 scalar_t__ O_WRONLY ;
 int TIFFErrorExt (int ,int ,char*) ;
 int isTiled (TYPE_1__*) ;

__attribute__((used)) static int
TIFFCheckRead(TIFF* tif, int tiles)
{
 if (tif->tif_mode == O_WRONLY) {
  TIFFErrorExt(tif->tif_clientdata, tif->tif_name, "File not open for reading");
  return (0);
 }
 if (tiles ^ isTiled(tif)) {
  TIFFErrorExt(tif->tif_clientdata, tif->tif_name, tiles ?
      "Can not read tiles from a stripped image" :
      "Can not read scanlines from a tiled image");
  return (0);
 }
 return (1);
}
