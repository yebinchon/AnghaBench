
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef size_t uint32 ;
typedef scalar_t__ uint16 ;
typedef int tmsize_t ;
struct TYPE_10__ {size_t td_imagelength; scalar_t__ td_planarconfig; scalar_t__ td_samplesperpixel; size_t td_stripsperimage; size_t td_rowsperstrip; scalar_t__* td_stripbytecount; scalar_t__ td_compression; } ;
struct TYPE_11__ {int tif_scanlinesize; size_t tif_curstrip; int tif_rawdata; int tif_rawdataloaded; int tif_rawcp; scalar_t__ tif_rawdataoff; size_t tif_row; int (* tif_seek ) (TYPE_2__*,size_t) ;TYPE_1__ tif_dir; int tif_name; int tif_clientdata; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ COMPRESSION_JBIG ;
 scalar_t__ COMPRESSION_LERC ;
 scalar_t__ PLANARCONFIG_SEPARATE ;
 int TIFFErrorExt (int ,int ,char*,unsigned long,unsigned long) ;
 int TIFFFillStrip (TYPE_2__*,size_t) ;
 int TIFFFillStripPartial (TYPE_2__*,size_t,int,int) ;
 int TIFFStartStrip (TYPE_2__*,size_t) ;
 int TIFF_TMSIZE_T_MAX ;
 int _TIFFFillStriles (TYPE_2__*) ;
 scalar_t__ isMapped (TYPE_2__*) ;
 int stub1 (TYPE_2__*,size_t) ;

__attribute__((used)) static int
TIFFSeek(TIFF* tif, uint32 row, uint16 sample )
{
 register TIFFDirectory *td = &tif->tif_dir;
 uint32 strip;
        int whole_strip;
 tmsize_t read_ahead = 0;




 if (row >= td->td_imagelength) {
  TIFFErrorExt(tif->tif_clientdata, tif->tif_name,
      "%lu: Row out of range, max %lu",
      (unsigned long) row,
      (unsigned long) td->td_imagelength);
  return (0);
 }
 if (td->td_planarconfig == PLANARCONFIG_SEPARATE) {
  if (sample >= td->td_samplesperpixel) {
   TIFFErrorExt(tif->tif_clientdata, tif->tif_name,
       "%lu: Sample out of range, max %lu",
       (unsigned long) sample, (unsigned long) td->td_samplesperpixel);
   return (0);
  }
  strip = (uint32)sample*td->td_stripsperimage + row/td->td_rowsperstrip;
 } else
  strip = row / td->td_rowsperstrip;
        whole_strip = 1;


        if( !whole_strip )
        {



                if( tif->tif_scanlinesize < TIFF_TMSIZE_T_MAX / 16 &&
                    tif->tif_scanlinesize * 16 < TIFF_TMSIZE_T_MAX - 5000 )
                {
                        read_ahead = tif->tif_scanlinesize * 16 + 5000;
                }
                else
                {
                        read_ahead = tif->tif_scanlinesize;
                }
        }





 if (strip != tif->tif_curstrip) {

                if( whole_strip )
                {
                        if (!TIFFFillStrip(tif, strip))
                                return (0);
                }
                else
                {
                        if( !TIFFFillStripPartial(tif,strip,read_ahead,1) )
                                return 0;
                }
 }




        else if( !whole_strip )
        {
                if( ((tif->tif_rawdata + tif->tif_rawdataloaded) - tif->tif_rawcp) < read_ahead
                    && (uint64) tif->tif_rawdataoff+tif->tif_rawdataloaded < td->td_stripbytecount[strip] )
                {
                        if( !TIFFFillStripPartial(tif,strip,read_ahead,0) )
                                return 0;
                }
        }

        if (row < tif->tif_row) {
                if( tif->tif_rawdataoff != 0 )
                {
                        if( !TIFFFillStripPartial(tif,strip,read_ahead,1) )
                                return 0;
                }
                else
                {
                        if (!TIFFStartStrip(tif, strip))
                                return (0);
                }
 }

 if (row != tif->tif_row) {






  if (!(*tif->tif_seek)(tif, row - tif->tif_row))
   return (0);
  tif->tif_row = row;
 }

 return (1);
}
