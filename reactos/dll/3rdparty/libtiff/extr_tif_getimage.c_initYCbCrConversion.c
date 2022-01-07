
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int tif_clientdata; } ;
struct TYPE_4__ {int * ycbcr; TYPE_3__* tif; } ;
typedef int TIFFYCbCrToRGB ;
typedef int TIFFRGBValue ;
typedef TYPE_1__ TIFFRGBAImage ;


 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFGetFieldDefaulted (TYPE_3__*,int ,float**) ;
 int TIFFTAG_REFERENCEBLACKWHITE ;
 int TIFFTAG_YCBCRCOEFFICIENTS ;
 scalar_t__ TIFFYCbCrToRGBInit (int *,float*,float*) ;
 scalar_t__ TIFFroundup_32 (int,int) ;
 scalar_t__ _TIFFmalloc (scalar_t__) ;
 int isInRefBlackWhiteRange (float) ;

__attribute__((used)) static int
initYCbCrConversion(TIFFRGBAImage* img)
{
 static const char module[] = "initYCbCrConversion";

 float *luma, *refBlackWhite;

 if (img->ycbcr == ((void*)0)) {
  img->ycbcr = (TIFFYCbCrToRGB*) _TIFFmalloc(
      TIFFroundup_32(sizeof (TIFFYCbCrToRGB), sizeof (long))
      + 4*256*sizeof (TIFFRGBValue)
      + 2*256*sizeof (int)
      + 3*256*sizeof (int32)
      );
  if (img->ycbcr == ((void*)0)) {
   TIFFErrorExt(img->tif->tif_clientdata, module,
       "No space for YCbCr->RGB conversion state");
   return (0);
  }
 }

 TIFFGetFieldDefaulted(img->tif, TIFFTAG_YCBCRCOEFFICIENTS, &luma);
 TIFFGetFieldDefaulted(img->tif, TIFFTAG_REFERENCEBLACKWHITE,
     &refBlackWhite);



        if( luma[0] != luma[0] ||
            luma[1] != luma[1] ||
            luma[1] == 0.0 ||
            luma[2] != luma[2] )
        {
            TIFFErrorExt(img->tif->tif_clientdata, module,
                "Invalid values for YCbCrCoefficients tag");
            return (0);
        }

        if( !isInRefBlackWhiteRange(refBlackWhite[0]) ||
            !isInRefBlackWhiteRange(refBlackWhite[1]) ||
            !isInRefBlackWhiteRange(refBlackWhite[2]) ||
            !isInRefBlackWhiteRange(refBlackWhite[3]) ||
            !isInRefBlackWhiteRange(refBlackWhite[4]) ||
            !isInRefBlackWhiteRange(refBlackWhite[5]) )
        {
            TIFFErrorExt(img->tif->tif_clientdata, module,
                "Invalid values for ReferenceBlackWhite tag");
            return (0);
        }

 if (TIFFYCbCrToRGBInit(img->ycbcr, luma, refBlackWhite) < 0)
  return(0);
 return (1);
}
