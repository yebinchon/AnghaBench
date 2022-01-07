
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_10__ {int td_stripsperimage; int td_samplesperpixel; int td_nstrips; scalar_t__ td_planarconfig; int * td_stripbytecount; int * td_stripoffset; } ;
struct TYPE_11__ {TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int FIELD_ROWSPERSTRIP ;
 int FIELD_STRIPBYTECOUNTS ;
 int FIELD_STRIPOFFSETS ;
 int FIELD_TILEDIMENSIONS ;
 scalar_t__ PLANARCONFIG_SEPARATE ;
 int TIFFNumberOfStrips (TYPE_2__*) ;
 int TIFFNumberOfTiles (TYPE_2__*) ;
 int TIFFSetFieldBit (TYPE_2__*,int ) ;
 scalar_t__ _TIFFCheckMalloc (TYPE_2__*,int,int,char*) ;
 int _TIFFmemset (int *,int ,int) ;
 scalar_t__ isTiled (TYPE_2__*) ;
 scalar_t__ isUnspecified (TYPE_2__*,int ) ;

int
TIFFSetupStrips(TIFF* tif)
{
 TIFFDirectory* td = &tif->tif_dir;

 if (isTiled(tif))
  td->td_stripsperimage =
      isUnspecified(tif, FIELD_TILEDIMENSIONS) ?
   td->td_samplesperpixel : TIFFNumberOfTiles(tif);
 else
  td->td_stripsperimage =
      isUnspecified(tif, FIELD_ROWSPERSTRIP) ?
   td->td_samplesperpixel : TIFFNumberOfStrips(tif);
 td->td_nstrips = td->td_stripsperimage;
 if (td->td_planarconfig == PLANARCONFIG_SEPARATE)
  td->td_stripsperimage /= td->td_samplesperpixel;
 td->td_stripoffset = (uint64 *)
            _TIFFCheckMalloc(tif, td->td_nstrips, sizeof (uint64),
                             "for \"StripOffsets\" array");
 td->td_stripbytecount = (uint64 *)
            _TIFFCheckMalloc(tif, td->td_nstrips, sizeof (uint64),
                             "for \"StripByteCounts\" array");
 if (td->td_stripoffset == ((void*)0) || td->td_stripbytecount == ((void*)0))
  return (0);




 _TIFFmemset(td->td_stripoffset, 0, td->td_nstrips*sizeof (uint64));
 _TIFFmemset(td->td_stripbytecount, 0, td->td_nstrips*sizeof (uint64));
 TIFFSetFieldBit(tif, FIELD_STRIPOFFSETS);
 TIFFSetFieldBit(tif, FIELD_STRIPBYTECOUNTS);
 return (1);
}
