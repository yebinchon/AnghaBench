
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
typedef int int16 ;
struct TYPE_6__ {int tif_flags; } ;
struct TYPE_5__ {int tdir_offset; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFSwabShort (int *) ;
 int TIFF_SWAB ;

__attribute__((used)) static void TIFFReadDirEntryCheckedSshort(TIFF* tif, TIFFDirEntry* direntry, int16* value)
{
 *value=*(int16*)(&direntry->tdir_offset);
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabShort((uint16*)value);
}
