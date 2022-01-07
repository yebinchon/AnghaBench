
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tmsize_t ;
struct TYPE_10__ {int td_samplesperpixel; scalar_t__ td_nstrips; int * td_stripoffset; int td_planarconfig; } ;
struct TYPE_11__ {scalar_t__ tif_mode; scalar_t__ tif_tilesize; scalar_t__ tif_scanlinesize; int tif_flags; int tif_clientdata; TYPE_1__ tif_dir; } ;
typedef TYPE_2__ TIFF ;


 int FIELD_IMAGEDIMENSIONS ;
 int FIELD_PLANARCONFIG ;
 scalar_t__ O_RDONLY ;
 int PLANARCONFIG_CONTIG ;
 int TIFFErrorExt (int ,char const*,char*,...) ;
 int TIFFFieldSet (TYPE_2__*,int ) ;
 scalar_t__ TIFFScanlineSize (TYPE_2__*) ;
 int TIFFSetupStrips (TYPE_2__*) ;
 scalar_t__ TIFFTileSize (TYPE_2__*) ;
 int TIFF_BEENWRITING ;
 int _TIFFFillStriles (TYPE_2__*) ;
 int isTiled (TYPE_2__*) ;

int
TIFFWriteCheck(TIFF* tif, int tiles, const char* module)
{
 if (tif->tif_mode == O_RDONLY) {
  TIFFErrorExt(tif->tif_clientdata, module, "File not open for writing");
  return (0);
 }
 if (tiles ^ isTiled(tif)) {
  TIFFErrorExt(tif->tif_clientdata, module, tiles ?
      "Can not write tiles to a stripped image" :
      "Can not write scanlines to a tiled image");
  return (0);
 }

        _TIFFFillStriles( tif );
 if (!TIFFFieldSet(tif, FIELD_IMAGEDIMENSIONS)) {
  TIFFErrorExt(tif->tif_clientdata, module,
      "Must set \"ImageWidth\" before writing data");
  return (0);
 }
 if (tif->tif_dir.td_samplesperpixel == 1) {






  if (!TIFFFieldSet(tif, FIELD_PLANARCONFIG))
                    tif->tif_dir.td_planarconfig = PLANARCONFIG_CONTIG;
 } else {
  if (!TIFFFieldSet(tif, FIELD_PLANARCONFIG)) {
   TIFFErrorExt(tif->tif_clientdata, module,
       "Must set \"PlanarConfiguration\" before writing data");
   return (0);
  }
 }
 if (tif->tif_dir.td_stripoffset == ((void*)0) && !TIFFSetupStrips(tif)) {
  tif->tif_dir.td_nstrips = 0;
  TIFFErrorExt(tif->tif_clientdata, module, "No space for %s arrays",
      isTiled(tif) ? "tile" : "strip");
  return (0);
 }
 if (isTiled(tif))
 {
  tif->tif_tilesize = TIFFTileSize(tif);
  if (tif->tif_tilesize == 0)
   return (0);
 }
 else
  tif->tif_tilesize = (tmsize_t)(-1);
 tif->tif_scanlinesize = TIFFScanlineSize(tif);
 if (tif->tif_scanlinesize == 0)
  return (0);
 tif->tif_flags |= TIFF_BEENWRITING;
 return (1);
}
