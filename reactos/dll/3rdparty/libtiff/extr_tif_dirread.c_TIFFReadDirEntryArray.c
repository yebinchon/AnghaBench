
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
typedef int TIFFDirEntry ;
typedef int TIFF ;


 int TIFFReadDirEntryArrayWithLimit (int *,int *,int *,int ,void**,int ) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryArray(TIFF* tif, TIFFDirEntry* direntry, uint32* count, uint32 desttypesize, void** value)
{
    return TIFFReadDirEntryArrayWithLimit(tif, direntry, count,
                                          desttypesize, value, ~((uint64)0));
}
