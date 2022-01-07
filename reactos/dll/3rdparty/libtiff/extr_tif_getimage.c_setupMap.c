
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int tif_clientdata; } ;
struct TYPE_5__ {long bitspersample; void** Map; scalar_t__ photometric; TYPE_4__* tif; } ;
typedef void* TIFFRGBValue ;
typedef TYPE_1__ TIFFRGBAImage ;


 scalar_t__ PHOTOMETRIC_MINISBLACK ;
 scalar_t__ PHOTOMETRIC_MINISWHITE ;
 int TIFFErrorExt (int ,int ,char*) ;
 int TIFFFileName (TYPE_4__*) ;
 int _TIFFfree (void**) ;
 scalar_t__ _TIFFmalloc (int) ;
 int makebwmap (TYPE_1__*) ;

__attribute__((used)) static int
setupMap(TIFFRGBAImage* img)
{
    int32 x, range;

    range = (int32)((1L<<img->bitspersample)-1);


    if( img->bitspersample == 16 )
        range = (int32) 255;

    img->Map = (TIFFRGBValue*) _TIFFmalloc((range+1) * sizeof (TIFFRGBValue));
    if (img->Map == ((void*)0)) {
  TIFFErrorExt(img->tif->tif_clientdata, TIFFFileName(img->tif),
   "No space for photometric conversion table");
  return (0);
    }
    if (img->photometric == PHOTOMETRIC_MINISWHITE) {
 for (x = 0; x <= range; x++)
     img->Map[x] = (TIFFRGBValue) (((range - x) * 255) / range);
    } else {
 for (x = 0; x <= range; x++)
     img->Map[x] = (TIFFRGBValue) ((x * 255) / range);
    }
    if (img->bitspersample <= 16 &&
 (img->photometric == PHOTOMETRIC_MINISBLACK ||
  img->photometric == PHOTOMETRIC_MINISWHITE)) {




 if (!makebwmap(img))
     return (0);

 _TIFFfree(img->Map);
 img->Map = ((void*)0);
    }
    return (1);
}
