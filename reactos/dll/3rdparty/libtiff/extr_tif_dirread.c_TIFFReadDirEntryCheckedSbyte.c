
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8 ;
struct TYPE_3__ {int tdir_offset; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef int TIFF ;



__attribute__((used)) static void TIFFReadDirEntryCheckedSbyte(TIFF* tif, TIFFDirEntry* direntry, int8* value)
{
 (void) tif;
 *value=*(int8*)(&direntry->tdir_offset);
}
