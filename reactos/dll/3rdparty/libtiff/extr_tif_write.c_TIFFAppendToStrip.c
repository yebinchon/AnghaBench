
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint64 ;
typedef size_t uint32 ;
typedef scalar_t__ tmsize_t ;
typedef scalar_t__ int64 ;
struct TYPE_7__ {scalar_t__* td_stripoffset; scalar_t__ td_nstrips; scalar_t__* td_stripbytecount; } ;
struct TYPE_8__ {scalar_t__ tif_curoff; int tif_flags; scalar_t__ tif_row; int tif_clientdata; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int SEEK_END ;
 int SeekOK (TYPE_2__*,scalar_t__) ;
 int TIFFErrorExt (int ,char const*,char*,...) ;
 scalar_t__ TIFFSeekFile (TYPE_2__*,int ,int ) ;
 int TIFF_BIGTIFF ;
 int TIFF_DIRTYSTRIP ;
 int WriteOK (TYPE_2__*,int *,scalar_t__) ;
 int assert (int) ;

__attribute__((used)) static int
TIFFAppendToStrip(TIFF* tif, uint32 strip, uint8* data, tmsize_t cc)
{
 static const char module[] = "TIFFAppendToStrip";
 TIFFDirectory *td = &tif->tif_dir;
 uint64 m;
        int64 old_byte_count = -1;

 if (td->td_stripoffset[strip] == 0 || tif->tif_curoff == 0) {
            assert(td->td_nstrips > 0);

            if( td->td_stripbytecount[strip] != 0
                && td->td_stripoffset[strip] != 0
                && td->td_stripbytecount[strip] >= (uint64) cc )
            {







                if (!SeekOK(tif, td->td_stripoffset[strip])) {
                    TIFFErrorExt(tif->tif_clientdata, module,
                                 "Seek error at scanline %lu",
                                 (unsigned long)tif->tif_row);
                    return (0);
                }
            }
            else
            {




                td->td_stripoffset[strip] = TIFFSeekFile(tif, 0, SEEK_END);
                tif->tif_flags |= TIFF_DIRTYSTRIP;
            }

            tif->tif_curoff = td->td_stripoffset[strip];




            old_byte_count = td->td_stripbytecount[strip];
            td->td_stripbytecount[strip] = 0;
 }

 m = tif->tif_curoff+cc;
 if (!(tif->tif_flags&TIFF_BIGTIFF))
  m = (uint32)m;
 if ((m<tif->tif_curoff)||(m<(uint64)cc))
 {
  TIFFErrorExt(tif->tif_clientdata, module, "Maximum TIFF file size exceeded");
  return (0);
 }
 if (!WriteOK(tif, data, cc)) {
  TIFFErrorExt(tif->tif_clientdata, module, "Write error at scanline %lu",
      (unsigned long) tif->tif_row);
      return (0);
 }
 tif->tif_curoff = m;
 td->td_stripbytecount[strip] += cc;

        if( (int64) td->td_stripbytecount[strip] != old_byte_count )
            tif->tif_flags |= TIFF_DIRTYSTRIP;

 return (1);
}
