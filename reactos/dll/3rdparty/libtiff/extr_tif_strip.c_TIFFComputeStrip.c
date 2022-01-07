
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_4__ {int td_rowsperstrip; scalar_t__ td_planarconfig; scalar_t__ td_samplesperpixel; int td_stripsperimage; } ;
struct TYPE_5__ {int tif_clientdata; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ PLANARCONFIG_SEPARATE ;
 int TIFFErrorExt (int ,char const*,char*,unsigned long,unsigned long) ;

uint32
TIFFComputeStrip(TIFF* tif, uint32 row, uint16 sample)
{
 static const char module[] = "TIFFComputeStrip";
 TIFFDirectory *td = &tif->tif_dir;
 uint32 strip;

 strip = row / td->td_rowsperstrip;
 if (td->td_planarconfig == PLANARCONFIG_SEPARATE) {
  if (sample >= td->td_samplesperpixel) {
   TIFFErrorExt(tif->tif_clientdata, module,
       "%lu: Sample out of range, max %lu",
       (unsigned long) sample, (unsigned long) td->td_samplesperpixel);
   return (0);
  }
  strip += (uint32)sample*td->td_stripsperimage;
 }
 return (strip);
}
