
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tif_sizeproc; } ;
typedef int TIFFSizeProc ;
typedef TYPE_1__ TIFF ;



TIFFSizeProc
TIFFGetSizeProc(TIFF* tif)
{
 return (tif->tif_sizeproc);
}
