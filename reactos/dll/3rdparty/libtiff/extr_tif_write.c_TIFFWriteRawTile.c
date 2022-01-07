
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int tmsize_t ;
struct TYPE_6__ {scalar_t__ td_nstrips; } ;
struct TYPE_7__ {TYPE_1__ tif_dir; int tif_clientdata; } ;
typedef TYPE_2__ TIFF ;


 scalar_t__ TIFFAppendToStrip (TYPE_2__*,scalar_t__,int *,int ) ;
 int TIFFErrorExt (int ,char const*,char*,unsigned long,unsigned long) ;
 int WRITECHECKTILES (TYPE_2__*,char const*) ;

tmsize_t
TIFFWriteRawTile(TIFF* tif, uint32 tile, void* data, tmsize_t cc)
{
 static const char module[] = "TIFFWriteRawTile";

 if (!WRITECHECKTILES(tif, module))
  return ((tmsize_t)(-1));
 if (tile >= tif->tif_dir.td_nstrips) {
  TIFFErrorExt(tif->tif_clientdata, module, "Tile %lu out of range, max %lu",
      (unsigned long) tile,
      (unsigned long) tif->tif_dir.td_nstrips);
  return ((tmsize_t)(-1));
 }
 return (TIFFAppendToStrip(tif, tile, (uint8*) data, cc) ?
     cc : (tmsize_t)(-1));
}
