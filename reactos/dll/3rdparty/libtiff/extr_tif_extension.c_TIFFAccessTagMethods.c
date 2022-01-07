
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tif_tagmethods; } ;
typedef int TIFFTagMethods ;
typedef TYPE_1__ TIFF ;



TIFFTagMethods *TIFFAccessTagMethods( TIFF *tif )

{
    return &(tif->tif_tagmethods);
}
