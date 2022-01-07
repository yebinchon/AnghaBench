
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int thandle_t ;
struct TYPE_3__ {int tif_clientdata; } ;
typedef TYPE_1__ TIFF ;



thandle_t
TIFFClientdata(TIFF* tif)
{
 return (tif->tif_clientdata);
}
