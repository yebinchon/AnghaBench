
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {scalar_t__ td_planarconfig; int td_samplesperpixel; int td_imagewidth; int td_bitspersample; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ PLANARCONFIG_CONTIG ;
 int TIFFhowmany8_64 (int ) ;
 int _TIFFMultiply64 (TYPE_2__*,int ,int ,char const*) ;

uint64
TIFFRasterScanlineSize64(TIFF* tif)
{
 static const char module[] = "TIFFRasterScanlineSize64";
 TIFFDirectory *td = &tif->tif_dir;
 uint64 scanline;

 scanline = _TIFFMultiply64(tif, td->td_bitspersample, td->td_imagewidth, module);
 if (td->td_planarconfig == PLANARCONFIG_CONTIG) {
  scanline = _TIFFMultiply64(tif, scanline, td->td_samplesperpixel, module);
  return (TIFFhowmany8_64(scanline));
 } else
  return (_TIFFMultiply64(tif, TIFFhowmany8_64(scanline),
      td->td_samplesperpixel, module));
}
