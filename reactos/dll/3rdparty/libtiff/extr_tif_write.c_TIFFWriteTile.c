
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int tmsize_t ;
typedef int TIFF ;


 int TIFFCheckTile (int *,int ,int ,int ,int ) ;
 int TIFFComputeTile (int *,int ,int ,int ,int ) ;
 int TIFFWriteEncodedTile (int *,int ,void*,int ) ;

tmsize_t
TIFFWriteTile(TIFF* tif, void* buf, uint32 x, uint32 y, uint32 z, uint16 s)
{
 if (!TIFFCheckTile(tif, x, y, z, s))
  return ((tmsize_t)(-1));






 return (TIFFWriteEncodedTile(tif,
     TIFFComputeTile(tif, x, y, z, s), buf, (tmsize_t)(-1)));
}
