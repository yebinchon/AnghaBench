
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef scalar_t__ uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_13__ {scalar_t__ tiff_diroff; } ;
struct TYPE_12__ {scalar_t__ tiff_diroff; } ;
struct TYPE_14__ {TYPE_2__ big; TYPE_1__ classic; } ;
struct TYPE_15__ {scalar_t__ tif_mode; int tif_flags; scalar_t__ tif_curstrip; scalar_t__ tif_row; scalar_t__ tif_curoff; scalar_t__ tif_nextdiroff; scalar_t__ tif_diroff; scalar_t__ tif_rawdataloaded; scalar_t__ tif_rawdataoff; scalar_t__ tif_rawcc; int * tif_rawdata; int (* tif_cleanup ) (TYPE_4__*) ;int tif_clientdata; TYPE_3__ tif_header; } ;
typedef TYPE_4__ TIFF ;


 scalar_t__ O_RDONLY ;
 int SEEK_SET ;
 int TIFFAdvanceDirectory (TYPE_4__*,scalar_t__*,scalar_t__*) ;
 int TIFFDefaultDirectory (TYPE_4__*) ;
 int TIFFErrorExt (int ,char const*,char*,...) ;
 int TIFFFreeDirectory (TYPE_4__*) ;
 int TIFFSeekFile (TYPE_4__*,scalar_t__,int ) ;
 int TIFFSwabLong (scalar_t__*) ;
 int TIFFSwabLong8 (scalar_t__*) ;
 int TIFF_BEENWRITING ;
 int TIFF_BIGTIFF ;
 int TIFF_BUF4WRITE ;
 int TIFF_BUFFERSETUP ;
 int TIFF_MYBUFFER ;
 int TIFF_POSTENCODE ;
 int TIFF_SWAB ;
 int WriteOK (TYPE_4__*,scalar_t__*,int) ;
 int _TIFFfree (int *) ;
 int assert (int) ;
 int stub1 (TYPE_4__*) ;

int
TIFFUnlinkDirectory(TIFF* tif, uint16 dirn)
{
 static const char module[] = "TIFFUnlinkDirectory";
 uint64 nextdir;
 uint64 off;
 uint16 n;

 if (tif->tif_mode == O_RDONLY) {
  TIFFErrorExt(tif->tif_clientdata, module,
                             "Can not unlink directory in read-only file");
  return (0);
 }





 if (!(tif->tif_flags&TIFF_BIGTIFF))
 {
  nextdir = tif->tif_header.classic.tiff_diroff;
  off = 4;
 }
 else
 {
  nextdir = tif->tif_header.big.tiff_diroff;
  off = 8;
 }
 for (n = dirn-1; n > 0; n--) {
  if (nextdir == 0) {
   TIFFErrorExt(tif->tif_clientdata, module, "Directory %d does not exist", dirn);
   return (0);
  }
  if (!TIFFAdvanceDirectory(tif, &nextdir, &off))
   return (0);
 }




 if (!TIFFAdvanceDirectory(tif, &nextdir, ((void*)0)))
  return (0);





 (void) TIFFSeekFile(tif, off, SEEK_SET);
 if (!(tif->tif_flags&TIFF_BIGTIFF))
 {
  uint32 nextdir32;
  nextdir32=(uint32)nextdir;
  assert((uint64)nextdir32==nextdir);
  if (tif->tif_flags & TIFF_SWAB)
   TIFFSwabLong(&nextdir32);
  if (!WriteOK(tif, &nextdir32, sizeof (uint32))) {
   TIFFErrorExt(tif->tif_clientdata, module, "Error writing directory link");
   return (0);
  }
 }
 else
 {
  if (tif->tif_flags & TIFF_SWAB)
   TIFFSwabLong8(&nextdir);
  if (!WriteOK(tif, &nextdir, sizeof (uint64))) {
   TIFFErrorExt(tif->tif_clientdata, module, "Error writing directory link");
   return (0);
  }
 }







 (*tif->tif_cleanup)(tif);
 if ((tif->tif_flags & TIFF_MYBUFFER) && tif->tif_rawdata) {
  _TIFFfree(tif->tif_rawdata);
  tif->tif_rawdata = ((void*)0);
  tif->tif_rawcc = 0;
                tif->tif_rawdataoff = 0;
                tif->tif_rawdataloaded = 0;
 }
 tif->tif_flags &= ~(TIFF_BEENWRITING|TIFF_BUFFERSETUP|TIFF_POSTENCODE|TIFF_BUF4WRITE);
 TIFFFreeDirectory(tif);
 TIFFDefaultDirectory(tif);
 tif->tif_diroff = 0;
 tif->tif_nextdiroff = 0;
 tif->tif_curoff = 0;
 tif->tif_row = (uint32) -1;
 tif->tif_curstrip = (uint32) -1;
 return (1);
}
