
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tif_nextdiroff; } ;
typedef TYPE_1__ TIFF ;



int
TIFFLastDirectory(TIFF* tif)
{
 return (tif->tif_nextdiroff == 0);
}
