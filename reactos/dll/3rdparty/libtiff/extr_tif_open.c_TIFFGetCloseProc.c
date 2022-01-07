
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tif_closeproc; } ;
typedef int TIFFCloseProc ;
typedef TYPE_1__ TIFF ;



TIFFCloseProc
TIFFGetCloseProc(TIFF* tif)
{
 return (tif->tif_closeproc);
}
