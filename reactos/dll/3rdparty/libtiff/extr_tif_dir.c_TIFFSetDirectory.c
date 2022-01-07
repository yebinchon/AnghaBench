
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef scalar_t__ uint16 ;
struct TYPE_8__ {scalar_t__ tiff_diroff; } ;
struct TYPE_9__ {scalar_t__ tiff_diroff; } ;
struct TYPE_10__ {TYPE_1__ big; TYPE_2__ classic; } ;
struct TYPE_11__ {int tif_flags; scalar_t__ tif_dirnumber; scalar_t__ tif_curdir; scalar_t__ tif_nextdiroff; TYPE_3__ tif_header; } ;
typedef TYPE_4__ TIFF ;


 int TIFFAdvanceDirectory (TYPE_4__*,scalar_t__*,int *) ;
 int TIFFReadDirectory (TYPE_4__*) ;
 int TIFF_BIGTIFF ;

int
TIFFSetDirectory(TIFF* tif, uint16 dirn)
{
 uint64 nextdir;
 uint16 n;

 if (!(tif->tif_flags&TIFF_BIGTIFF))
  nextdir = tif->tif_header.classic.tiff_diroff;
 else
  nextdir = tif->tif_header.big.tiff_diroff;
 for (n = dirn; n > 0 && nextdir != 0; n--)
  if (!TIFFAdvanceDirectory(tif, &nextdir, ((void*)0)))
   return (0);
 tif->tif_nextdiroff = nextdir;





 tif->tif_curdir = (dirn - n) - 1;




 tif->tif_dirnumber = 0;
 return (TIFFReadDirectory(tif));
}
