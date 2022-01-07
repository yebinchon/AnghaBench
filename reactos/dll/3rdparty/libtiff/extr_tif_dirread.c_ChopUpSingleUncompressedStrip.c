
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_9__ {int* td_stripbytecount; int* td_stripoffset; scalar_t__ td_planarconfig; scalar_t__ td_photometric; int* td_ycbcrsubsampling; int td_rowsperstrip; int td_stripsperimage; int td_nstrips; int td_stripbytecountsorted; int td_imagelength; } ;
struct TYPE_10__ {scalar_t__ tif_mode; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ O_RDONLY ;
 scalar_t__ PHOTOMETRIC_YCBCR ;
 scalar_t__ PLANARCONFIG_CONTIG ;
 int STRIP_SIZE_DEFAULT ;
 int TIFFGetFileSize (TYPE_2__*) ;
 int TIFFSetField (TYPE_2__*,int ,int) ;
 int TIFFTAG_ROWSPERSTRIP ;
 int TIFFVTileSize64 (TYPE_2__*,int) ;
 int TIFFhowmany_32 (int ,int) ;
 scalar_t__ _TIFFCheckMalloc (TYPE_2__*,int,int,char*) ;
 int _TIFFfree (int*) ;
 int assert (int) ;
 int isUpSampled (TYPE_2__*) ;

__attribute__((used)) static void
ChopUpSingleUncompressedStrip(TIFF* tif)
{
 register TIFFDirectory *td = &tif->tif_dir;
 uint64 bytecount;
 uint64 offset;
 uint32 rowblock;
 uint64 rowblockbytes;
 uint64 stripbytes;
 uint32 strip;
 uint32 nstrips;
 uint32 rowsperstrip;
 uint64* newcounts;
 uint64* newoffsets;

 bytecount = td->td_stripbytecount[0];



        if( bytecount == 0 && tif->tif_mode != O_RDONLY )
            return;
 offset = td->td_stripoffset[0];
 assert(td->td_planarconfig == PLANARCONFIG_CONTIG);
 if ((td->td_photometric == PHOTOMETRIC_YCBCR)&&
     (!isUpSampled(tif)))
  rowblock = td->td_ycbcrsubsampling[1];
 else
  rowblock = 1;
 rowblockbytes = TIFFVTileSize64(tif, rowblock);




 if (rowblockbytes > STRIP_SIZE_DEFAULT) {
  stripbytes = rowblockbytes;
  rowsperstrip = rowblock;
 } else if (rowblockbytes > 0 ) {
  uint32 rowblocksperstrip;
  rowblocksperstrip = (uint32) (STRIP_SIZE_DEFAULT / rowblockbytes);
  rowsperstrip = rowblocksperstrip * rowblock;
  stripbytes = rowblocksperstrip * rowblockbytes;
 }
 else
     return;




 if (rowsperstrip >= td->td_rowsperstrip)
  return;
        nstrips = TIFFhowmany_32(td->td_imagelength, rowsperstrip);
        if( nstrips == 0 )
            return;



        if( tif->tif_mode == O_RDONLY &&
            nstrips > 1000000 &&
            (offset >= TIFFGetFileSize(tif) ||
             stripbytes > (TIFFGetFileSize(tif) - offset) / (nstrips - 1)) )
        {
            return;
        }

 newcounts = (uint64*) _TIFFCheckMalloc(tif, nstrips, sizeof (uint64),
    "for chopped \"StripByteCounts\" array");
 newoffsets = (uint64*) _TIFFCheckMalloc(tif, nstrips, sizeof (uint64),
    "for chopped \"StripOffsets\" array");
 if (newcounts == ((void*)0) || newoffsets == ((void*)0)) {




  if (newcounts != ((void*)0))
   _TIFFfree(newcounts);
  if (newoffsets != ((void*)0))
   _TIFFfree(newoffsets);
  return;
 }




 for (strip = 0; strip < nstrips; strip++) {
  if (stripbytes > bytecount)
   stripbytes = bytecount;
  newcounts[strip] = stripbytes;
  newoffsets[strip] = stripbytes ? offset : 0;
  offset += stripbytes;
  bytecount -= stripbytes;
 }



 td->td_stripsperimage = td->td_nstrips = nstrips;
 TIFFSetField(tif, TIFFTAG_ROWSPERSTRIP, rowsperstrip);

 _TIFFfree(td->td_stripbytecount);
 _TIFFfree(td->td_stripoffset);
 td->td_stripbytecount = newcounts;
 td->td_stripoffset = newoffsets;
 td->td_stripbytecountsorted = 1;
}
