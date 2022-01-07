
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int tif_curstrip; } ;
typedef TYPE_1__ TIFF ;



uint32
TIFFCurrentStrip(TIFF* tif)
{
 return (tif->tif_curstrip);
}
