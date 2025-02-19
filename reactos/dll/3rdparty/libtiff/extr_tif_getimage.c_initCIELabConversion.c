
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * tileContigRoutine ;
struct TYPE_5__ {int tif_clientdata; } ;
struct TYPE_4__ {int * cielab; TYPE_3__* tif; } ;
typedef TYPE_1__ TIFFRGBAImage ;
typedef int TIFFCIELabToRGB ;


 scalar_t__ TIFFCIELabToRGBInit (int *,int *,float*) ;
 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFGetFieldDefaulted (TYPE_3__*,int ,float**) ;
 int TIFFTAG_WHITEPOINT ;
 int _TIFFfree (int *) ;
 scalar_t__ _TIFFmalloc (int) ;
 int display_sRGB ;
 int * putcontig8bitCIELab ;

__attribute__((used)) static tileContigRoutine
initCIELabConversion(TIFFRGBAImage* img)
{
 static const char module[] = "initCIELabConversion";

 float *whitePoint;
 float refWhite[3];

 TIFFGetFieldDefaulted(img->tif, TIFFTAG_WHITEPOINT, &whitePoint);
 if (whitePoint[1] == 0.0f ) {
  TIFFErrorExt(img->tif->tif_clientdata, module,
      "Invalid value for WhitePoint tag.");
  return ((void*)0);
        }

 if (!img->cielab) {
  img->cielab = (TIFFCIELabToRGB *)
   _TIFFmalloc(sizeof(TIFFCIELabToRGB));
  if (!img->cielab) {
   TIFFErrorExt(img->tif->tif_clientdata, module,
       "No space for CIE L*a*b*->RGB conversion state.");
   return ((void*)0);
  }
 }

 refWhite[1] = 100.0F;
 refWhite[0] = whitePoint[0] / whitePoint[1] * refWhite[1];
 refWhite[2] = (1.0F - whitePoint[0] - whitePoint[1])
        / whitePoint[1] * refWhite[1];
 if (TIFFCIELabToRGBInit(img->cielab, &display_sRGB, refWhite) < 0) {
  TIFFErrorExt(img->tif->tif_clientdata, module,
      "Failed to initialize CIE L*a*b*->RGB conversion state.");
  _TIFFfree(img->cielab);
  return ((void*)0);
 }

 return putcontig8bitCIELab;
}
