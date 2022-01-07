
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int tmsize_t ;
typedef int TIFF ;


 int TIFFNoDecode (int *,char*) ;

int
_TIFFNoStripDecode(TIFF* tif, uint8* pp, tmsize_t cc, uint16 s)
{
 (void) pp; (void) cc; (void) s;
 return (TIFFNoDecode(tif, "strip"));
}
