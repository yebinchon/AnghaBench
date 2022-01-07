
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_13__ {int td_imagelength; scalar_t__ td_planarconfig; int td_samplesperpixel; int td_stripsperimage; int td_rowsperstrip; int td_nstrips; scalar_t__* td_stripbytecount; } ;
struct TYPE_14__ {int tif_flags; int tif_curstrip; int tif_row; int (* tif_encoderow ) (TYPE_2__*,int *,int ,int) ;int tif_scanlinesize; int (* tif_postdecode ) (TYPE_2__*,int *,int ) ;int (* tif_seek ) (TYPE_2__*,int) ;int tif_rawdata; int tif_rawcp; int (* tif_preencode ) (TYPE_2__*,int) ;scalar_t__ tif_curoff; scalar_t__ tif_rawcc; int (* tif_setupencode ) (TYPE_2__*) ;int tif_clientdata; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int BUFFERCHECK (TYPE_2__*) ;
 scalar_t__ PLANARCONFIG_SEPARATE ;
 int TIFFErrorExt (int ,char const*,char*,...) ;
 int TIFFFlushData (TYPE_2__*) ;
 int TIFFGrowStrips (TYPE_2__*,int,char const*) ;
 int TIFF_BUF4WRITE ;
 int TIFF_CODERSETUP ;
 int TIFF_POSTENCODE ;
 int TIFFhowmany_32 (int,int) ;
 int WRITECHECKSTRIPS (TYPE_2__*,char const*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int) ;
 int stub3 (TYPE_2__*,int) ;
 int stub4 (TYPE_2__*,int *,int ) ;
 int stub5 (TYPE_2__*,int *,int ,int) ;

int
TIFFWriteScanline(TIFF* tif, void* buf, uint32 row, uint16 sample)
{
 static const char module[] = "TIFFWriteScanline";
 register TIFFDirectory *td;
 int status, imagegrew = 0;
 uint32 strip;

 if (!WRITECHECKSTRIPS(tif, module))
  return (-1);





 if (!BUFFERCHECK(tif))
  return (-1);
        tif->tif_flags |= TIFF_BUF4WRITE;

 td = &tif->tif_dir;




 if (row >= td->td_imagelength) {
  if (td->td_planarconfig == PLANARCONFIG_SEPARATE) {
   TIFFErrorExt(tif->tif_clientdata, module,
       "Can not change \"ImageLength\" when using separate planes");
   return (-1);
  }
  td->td_imagelength = row+1;
  imagegrew = 1;
 }



 if (td->td_planarconfig == PLANARCONFIG_SEPARATE) {
  if (sample >= td->td_samplesperpixel) {
   TIFFErrorExt(tif->tif_clientdata, module,
       "%lu: Sample out of range, max %lu",
       (unsigned long) sample, (unsigned long) td->td_samplesperpixel);
   return (-1);
  }
  strip = sample*td->td_stripsperimage + row/td->td_rowsperstrip;
 } else
  strip = row / td->td_rowsperstrip;







 if (strip >= td->td_nstrips && !TIFFGrowStrips(tif, 1, module))
  return (-1);
 if (strip != tif->tif_curstrip) {



  if (!TIFFFlushData(tif))
   return (-1);
  tif->tif_curstrip = strip;





  if (strip >= td->td_stripsperimage && imagegrew)
   td->td_stripsperimage =
       TIFFhowmany_32(td->td_imagelength,td->td_rowsperstrip);
                if (td->td_stripsperimage == 0) {
                        TIFFErrorExt(tif->tif_clientdata, module, "Zero strips per image");
                        return (-1);
                }
  tif->tif_row =
      (strip % td->td_stripsperimage) * td->td_rowsperstrip;
  if ((tif->tif_flags & TIFF_CODERSETUP) == 0) {
   if (!(*tif->tif_setupencode)(tif))
    return (-1);
   tif->tif_flags |= TIFF_CODERSETUP;
  }

  tif->tif_rawcc = 0;
  tif->tif_rawcp = tif->tif_rawdata;

  if( td->td_stripbytecount[strip] > 0 )
  {

   td->td_stripbytecount[strip] = 0;


   tif->tif_curoff = 0;
  }

  if (!(*tif->tif_preencode)(tif, sample))
   return (-1);
  tif->tif_flags |= TIFF_POSTENCODE;
 }





 if (row != tif->tif_row) {
  if (row < tif->tif_row) {





   tif->tif_row = (strip % td->td_stripsperimage) *
       td->td_rowsperstrip;
   tif->tif_rawcp = tif->tif_rawdata;
  }



  if (!(*tif->tif_seek)(tif, row - tif->tif_row))
   return (-1);
  tif->tif_row = row;
 }


 tif->tif_postdecode( tif, (uint8*) buf, tif->tif_scanlinesize );

 status = (*tif->tif_encoderow)(tif, (uint8*) buf,
     tif->tif_scanlinesize, sample);


 tif->tif_row = row + 1;
 return (status);
}
