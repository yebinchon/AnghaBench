
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef scalar_t__ tmsize_t ;
struct TYPE_4__ {int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*) ;
 scalar_t__ TIFFStripSize64 (TYPE_1__*) ;

tmsize_t
TIFFStripSize(TIFF* tif)
{
 static const char module[] = "TIFFStripSize";
 uint64 m;
 tmsize_t n;
 m=TIFFStripSize64(tif);
 n=(tmsize_t)m;
 if ((uint64)n!=m)
 {
  TIFFErrorExt(tif->tif_clientdata,module,"Integer overflow");
  n=0;
 }
 return(n);
}
