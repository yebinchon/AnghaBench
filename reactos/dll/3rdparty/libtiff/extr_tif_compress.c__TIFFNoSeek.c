
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int tif_name; int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,int ,char*) ;

int
_TIFFNoSeek(TIFF* tif, uint32 off)
{
 (void) off;
 TIFFErrorExt(tif->tif_clientdata, tif->tif_name,
       "Compression algorithm does not support random access");
 return (0);
}
