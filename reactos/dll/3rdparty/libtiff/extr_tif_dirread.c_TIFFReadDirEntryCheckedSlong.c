
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
struct TYPE_6__ {int tif_flags; } ;
struct TYPE_5__ {int tdir_offset; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFSwabLong (int *) ;
 int TIFF_SWAB ;

__attribute__((used)) static void TIFFReadDirEntryCheckedSlong(TIFF* tif, TIFFDirEntry* direntry, int32* value)
{
 *value=*(int32*)(&direntry->tdir_offset);
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabLong((uint32*)value);
}
