
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tif_mode; } ;
typedef TYPE_1__ TIFF ;



int
TIFFSetMode(TIFF* tif, int mode)
{
 int old_mode = tif->tif_mode;
 tif->tif_mode = mode;
 return (old_mode);
}
