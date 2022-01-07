
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int (* tif_defstripsize ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ TIFF ;


 int stub1 (TYPE_1__*,int ) ;

uint32
TIFFDefaultStripSize(TIFF* tif, uint32 request)
{
 return (*tif->tif_defstripsize)(tif, request);
}
