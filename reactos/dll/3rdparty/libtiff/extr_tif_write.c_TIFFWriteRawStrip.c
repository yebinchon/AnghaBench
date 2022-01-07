
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int tmsize_t ;
struct TYPE_7__ {scalar_t__ td_nstrips; scalar_t__ td_planarconfig; scalar_t__ td_stripsperimage; scalar_t__ td_rowsperstrip; int td_imagelength; } ;
struct TYPE_8__ {scalar_t__ tif_row; int tif_clientdata; scalar_t__ tif_curstrip; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ PLANARCONFIG_SEPARATE ;
 scalar_t__ TIFFAppendToStrip (TYPE_2__*,scalar_t__,int *,int ) ;
 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFGrowStrips (TYPE_2__*,int,char const*) ;
 scalar_t__ TIFFhowmany_32 (int ,scalar_t__) ;
 int WRITECHECKSTRIPS (TYPE_2__*,char const*) ;

tmsize_t
TIFFWriteRawStrip(TIFF* tif, uint32 strip, void* data, tmsize_t cc)
{
 static const char module[] = "TIFFWriteRawStrip";
 TIFFDirectory *td = &tif->tif_dir;

 if (!WRITECHECKSTRIPS(tif, module))
  return ((tmsize_t) -1);
 if (strip >= td->td_nstrips) {
  if (td->td_planarconfig == PLANARCONFIG_SEPARATE) {
   TIFFErrorExt(tif->tif_clientdata, module,
       "Can not grow image by strips when using separate planes");
   return ((tmsize_t) -1);
  }





  if (strip >= td->td_stripsperimage)
   td->td_stripsperimage =
       TIFFhowmany_32(td->td_imagelength,td->td_rowsperstrip);
  if (!TIFFGrowStrips(tif, 1, module))
   return ((tmsize_t) -1);
 }
 tif->tif_curstrip = strip;
        if (td->td_stripsperimage == 0) {
                TIFFErrorExt(tif->tif_clientdata, module,"Zero strips per image");
                return ((tmsize_t) -1);
        }
 tif->tif_row = (strip % td->td_stripsperimage) * td->td_rowsperstrip;
 return (TIFFAppendToStrip(tif, strip, (uint8*) data, cc) ?
     cc : (tmsize_t) -1);
}
