
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_4__ {scalar_t__ tdir_tag; } ;
typedef TYPE_1__ TIFFDirEntry ;
typedef int TIFF ;



__attribute__((used)) static TIFFDirEntry*
TIFFReadDirectoryFindEntry(TIFF* tif, TIFFDirEntry* dir, uint16 dircount, uint16 tagid)
{
 TIFFDirEntry* m;
 uint16 n;
 (void) tif;
 for (m=dir, n=0; n<dircount; m++, n++)
 {
  if (m->tdir_tag==tagid)
   return(m);
 }
 return(0);
}
