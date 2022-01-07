
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_8__ {int tif_flags; } ;
struct TYPE_6__ {int toff_short; } ;
struct TYPE_7__ {TYPE_1__ tdir_offset; } ;
typedef TYPE_2__ TIFFDirEntry ;
typedef TYPE_3__ TIFF ;


 int TIFFSwabShort (int *) ;
 int TIFF_SWAB ;

__attribute__((used)) static void TIFFReadDirEntryCheckedShort(TIFF* tif, TIFFDirEntry* direntry, uint16* value)
{
 *value = direntry->tdir_offset.toff_short;

 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabShort(value);
}
