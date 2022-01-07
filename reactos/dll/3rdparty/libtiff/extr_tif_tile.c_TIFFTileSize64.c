
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {int td_tilelength; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; } ;
typedef TYPE_2__ TIFF ;


 int TIFFVTileSize64 (TYPE_2__*,int ) ;

uint64
TIFFTileSize64(TIFF* tif)
{
 return (TIFFVTileSize64(tif, tif->tif_dir.td_tilelength));
}
