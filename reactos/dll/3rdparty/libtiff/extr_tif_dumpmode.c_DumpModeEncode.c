
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
typedef scalar_t__ tmsize_t ;
struct TYPE_4__ {scalar_t__ tif_rawcc; scalar_t__ tif_rawdatasize; int * tif_rawcp; } ;
typedef TYPE_1__ TIFF ;


 int TIFFFlushData1 (TYPE_1__*) ;
 int _TIFFmemcpy (int *,int *,scalar_t__) ;
 int assert (int) ;

__attribute__((used)) static int
DumpModeEncode(TIFF* tif, uint8* pp, tmsize_t cc, uint16 s)
{
 (void) s;
 while (cc > 0) {
  tmsize_t n;

  n = cc;
  if (tif->tif_rawcc + n > tif->tif_rawdatasize)
   n = tif->tif_rawdatasize - tif->tif_rawcc;

  assert( n > 0 );





  if (tif->tif_rawcp != pp)
   _TIFFmemcpy(tif->tif_rawcp, pp, n);
  tif->tif_rawcp += n;
  tif->tif_rawcc += n;
  pp += n;
  cc -= n;
  if (tif->tif_rawcc >= tif->tif_rawdatasize &&
      !TIFFFlushData1(tif))
   return (0);
 }
 return (1);
}
