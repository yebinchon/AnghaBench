
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_3__ {int tif_curdir; } ;
typedef TYPE_1__ TIFF ;



uint16
TIFFCurrentDirectory(TIFF* tif)
{
 return (tif->tif_curdir);
}
