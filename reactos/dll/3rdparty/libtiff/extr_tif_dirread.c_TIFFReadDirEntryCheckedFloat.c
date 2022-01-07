
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int float_union ;
struct TYPE_6__ {int tif_flags; } ;
struct TYPE_5__ {int tdir_offset; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFSwabLong (int *) ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static void TIFFReadDirEntryCheckedFloat(TIFF* tif, TIFFDirEntry* direntry, float* value)
{
         union
  {
    float f;
    uint32 i;
  } float_union;
 assert(sizeof(float)==4);
 assert(sizeof(uint32)==4);
 assert(sizeof(float_union)==4);
 float_union.i=*(uint32*)(&direntry->tdir_offset);
 *value=float_union.f;
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabLong((uint32*)value);
}
