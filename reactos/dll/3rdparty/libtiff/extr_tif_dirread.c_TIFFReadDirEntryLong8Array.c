
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
typedef int TIFFDirEntry ;
typedef int TIFF ;


 int TIFFReadDirEntryLong8ArrayWithLimit (int *,int *,int **,int ) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryLong8Array(TIFF* tif, TIFFDirEntry* direntry, uint64** value)
{
    return TIFFReadDirEntryLong8ArrayWithLimit(tif, direntry, value, ~((uint64)0));
}
