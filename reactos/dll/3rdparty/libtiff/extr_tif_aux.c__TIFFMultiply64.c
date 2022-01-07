
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_3__ {int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*,char const*) ;

uint64
_TIFFMultiply64(TIFF* tif, uint64 first, uint64 second, const char* where)
{
 uint64 bytes = first * second;

 if (second && bytes / second != first) {
  TIFFErrorExt(tif->tif_clientdata, where, "Integer overflow in %s", where);
  bytes = 0;
 }

 return bytes;
}
