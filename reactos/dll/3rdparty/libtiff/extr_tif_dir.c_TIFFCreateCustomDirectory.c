
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32 ;
struct TYPE_5__ {void* tif_curstrip; void* tif_row; scalar_t__ tif_curoff; scalar_t__ tif_nextdiroff; scalar_t__ tif_diroff; } ;
typedef int TIFFFieldArray ;
typedef TYPE_1__ TIFF ;


 int TIFFDefaultDirectory (TYPE_1__*) ;
 int _TIFFSetupFields (TYPE_1__*,int const*) ;

int
TIFFCreateCustomDirectory(TIFF* tif, const TIFFFieldArray* infoarray)
{
 TIFFDefaultDirectory(tif);






 _TIFFSetupFields(tif, infoarray);

 tif->tif_diroff = 0;
 tif->tif_nextdiroff = 0;
 tif->tif_curoff = 0;
 tif->tif_row = (uint32) -1;
 tif->tif_curstrip = (uint32) -1;

 return 0;
}
