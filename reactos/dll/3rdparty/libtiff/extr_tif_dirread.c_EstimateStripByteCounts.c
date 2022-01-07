
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
struct TYPE_14__ {int* td_stripbytecount; scalar_t__ td_nstrips; scalar_t__ td_compression; scalar_t__ td_planarconfig; int td_samplesperpixel; int* td_stripoffset; scalar_t__ td_imagelength; scalar_t__ td_stripsperimage; scalar_t__ td_rowsperstrip; } ;
struct TYPE_16__ {int tif_flags; int tif_clientdata; TYPE_1__ tif_dir; } ;
struct TYPE_15__ {int tdir_count; scalar_t__ tdir_type; } ;
typedef int TIFFHeaderClassic ;
typedef int TIFFHeaderBig ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFFDirEntry ;
typedef int TIFFDataType ;
typedef TYPE_3__ TIFF ;


 scalar_t__ COMPRESSION_NONE ;
 int FIELD_ROWSPERSTRIP ;
 int FIELD_STRIPBYTECOUNTS ;
 scalar_t__ PLANARCONFIG_SEPARATE ;
 scalar_t__ TIFFDataWidth (int ) ;
 int TIFFErrorExt (int ,char const*,char*,scalar_t__) ;
 int TIFFFieldSet (TYPE_3__*,int ) ;
 int TIFFGetFileSize (TYPE_3__*) ;
 int TIFFScanlineSize64 (TYPE_3__*) ;
 int TIFFSetFieldBit (TYPE_3__*,int ) ;
 int TIFFTileSize64 (TYPE_3__*) ;
 int TIFF_BIGTIFF ;
 scalar_t__ _TIFFCheckMalloc (TYPE_3__*,scalar_t__,int,char*) ;
 int _TIFFFillStrilesInternal (TYPE_3__*,int ) ;
 int _TIFFfree (int*) ;
 scalar_t__ isTiled (TYPE_3__*) ;

__attribute__((used)) static int
EstimateStripByteCounts(TIFF* tif, TIFFDirEntry* dir, uint16 dircount)
{
 static const char module[] = "EstimateStripByteCounts";

 TIFFDirEntry *dp;
 TIFFDirectory *td = &tif->tif_dir;
 uint32 strip;


        if( !_TIFFFillStrilesInternal( tif, 0 ) )
            return -1;

 if (td->td_stripbytecount)
  _TIFFfree(td->td_stripbytecount);
 td->td_stripbytecount = (uint64*)
     _TIFFCheckMalloc(tif, td->td_nstrips, sizeof (uint64),
  "for \"StripByteCounts\" array");
        if( td->td_stripbytecount == ((void*)0) )
            return -1;

 if (td->td_compression != COMPRESSION_NONE) {
  uint64 space;
  uint64 filesize;
  uint16 n;
  filesize = TIFFGetFileSize(tif);
  if (!(tif->tif_flags&TIFF_BIGTIFF))
   space=sizeof(TIFFHeaderClassic)+2+dircount*12+4;
  else
   space=sizeof(TIFFHeaderBig)+8+dircount*20+8;

  for (dp = dir, n = dircount; n > 0; n--, dp++)
  {
   uint32 typewidth;
   uint64 datasize;
   typewidth = TIFFDataWidth((TIFFDataType) dp->tdir_type);
   if (typewidth == 0) {
    TIFFErrorExt(tif->tif_clientdata, module,
        "Cannot determine size of unknown tag type %d",
        dp->tdir_type);
    return -1;
   }
   datasize=(uint64)typewidth*dp->tdir_count;
   if (!(tif->tif_flags&TIFF_BIGTIFF))
   {
    if (datasize<=4)
     datasize=0;
   }
   else
   {
    if (datasize<=8)
     datasize=0;
   }
   space+=datasize;
  }
  if( filesize < space )

                    space = filesize;
                else
                    space = filesize - space;
  if (td->td_planarconfig == PLANARCONFIG_SEPARATE)
   space /= td->td_samplesperpixel;
  for (strip = 0; strip < td->td_nstrips; strip++)
   td->td_stripbytecount[strip] = space;







  strip--;
  if (td->td_stripoffset[strip]+td->td_stripbytecount[strip] > filesize)
   td->td_stripbytecount[strip] = filesize - td->td_stripoffset[strip];
 } else if (isTiled(tif)) {
  uint64 bytespertile = TIFFTileSize64(tif);

  for (strip = 0; strip < td->td_nstrips; strip++)
      td->td_stripbytecount[strip] = bytespertile;
 } else {
  uint64 rowbytes = TIFFScanlineSize64(tif);
  uint32 rowsperstrip = td->td_imagelength/td->td_stripsperimage;
  for (strip = 0; strip < td->td_nstrips; strip++)
   td->td_stripbytecount[strip] = rowbytes * rowsperstrip;
 }
 TIFFSetFieldBit(tif, FIELD_STRIPBYTECOUNTS);
 if (!TIFFFieldSet(tif, FIELD_ROWSPERSTRIP))
  td->td_rowsperstrip = td->td_imagelength;
 return 1;
}
