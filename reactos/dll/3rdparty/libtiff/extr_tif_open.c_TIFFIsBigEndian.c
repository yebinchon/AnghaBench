
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tiff_magic; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct TYPE_7__ {TYPE_2__ tif_header; } ;
typedef TYPE_3__ TIFF ;


 scalar_t__ TIFF_BIGENDIAN ;

int
TIFFIsBigEndian(TIFF* tif)
{
 return (tif->tif_header.common.tiff_magic == TIFF_BIGENDIAN);
}
