
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;
typedef int TIFF ;


 int TIFFroundup_32 (int,int) ;

void
_TIFFDefaultTileSize(TIFF* tif, uint32* tw, uint32* th)
{
 (void) tif;
 if (*(int32*) tw < 1)
  *tw = 256;
 if (*(int32*) th < 1)
  *th = 256;

 if (*tw & 0xf)
  *tw = TIFFroundup_32(*tw, 16);
 if (*th & 0xf)
  *th = TIFFroundup_32(*th, 16);
}
