
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef scalar_t__ uint32 ;
typedef int int32 ;
typedef int TIFF ;


 scalar_t__ STRIP_SIZE_DEFAULT ;
 int TIFFScanlineSize64 (int *) ;

uint32
_TIFFDefaultStripSize(TIFF* tif, uint32 s)
{
 if ((int32) s < 1) {





  uint64 scanlinesize;
  uint64 rows;
  scanlinesize=TIFFScanlineSize64(tif);
  if (scanlinesize==0)
   scanlinesize=1;
  rows=(uint64)STRIP_SIZE_DEFAULT/scanlinesize;
  if (rows==0)
   rows=1;
  else if (rows>0xFFFFFFFF)
   rows=0xFFFFFFFF;
  s=(uint32)rows;
 }
 return (s);
}
