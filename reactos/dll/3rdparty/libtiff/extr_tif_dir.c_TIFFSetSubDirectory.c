
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {scalar_t__ tif_dirnumber; int tif_nextdiroff; } ;
typedef TYPE_1__ TIFF ;


 int TIFFReadDirectory (TYPE_1__*) ;

int
TIFFSetSubDirectory(TIFF* tif, uint64 diroff)
{
 tif->tif_nextdiroff = diroff;




 tif->tif_dirnumber = 0;
 return (TIFFReadDirectory(tif));
}
