
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int tif_rawcp; int tif_scanlinesize; int tif_rawcc; } ;
typedef TYPE_1__ TIFF ;



__attribute__((used)) static int
DumpModeSeek(TIFF* tif, uint32 nrows)
{
 tif->tif_rawcp += nrows * tif->tif_scanlinesize;
 tif->tif_rawcc -= nrows * tif->tif_scanlinesize;
 return (1);
}
