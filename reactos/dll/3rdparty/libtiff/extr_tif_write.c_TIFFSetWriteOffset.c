
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int toff_t ;
struct TYPE_3__ {int tif_curoff; } ;
typedef TYPE_1__ TIFF ;



void
TIFFSetWriteOffset(TIFF* tif, toff_t off)
{
 tif->tif_curoff = off;
}
