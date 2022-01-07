
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_3__ {int tif_diroff; } ;
typedef TYPE_1__ TIFF ;



uint64
TIFFCurrentDirOffset(TIFF* tif)
{
 return (tif->tif_diroff);
}
