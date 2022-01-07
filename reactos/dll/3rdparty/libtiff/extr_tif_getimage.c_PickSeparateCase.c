
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_7__ {int * separate; } ;
struct TYPE_8__ {int photometric; int bitspersample; int alpha; int samplesperpixel; TYPE_1__ put; int * get; int tif; } ;
typedef TYPE_2__ TIFFRGBAImage ;


 int BuildMapBitdepth16To8 (TYPE_2__*) ;
 int BuildMapUaToAa (TYPE_2__*) ;
 int EXTRASAMPLE_ASSOCALPHA ;
 int EXTRASAMPLE_UNASSALPHA ;





 int TIFFGetFieldDefaulted (int ,int ,int*,int*) ;
 scalar_t__ TIFFIsTiled (int ) ;
 int TIFFTAG_YCBCRSUBSAMPLING ;
 int * gtStripSeparate ;
 int * gtTileSeparate ;
 int initYCbCrConversion (TYPE_2__*) ;
 int * putCMYKseparate8bittile ;
 int * putRGBAAseparate16bittile ;
 int * putRGBAAseparate8bittile ;
 int * putRGBUAseparate16bittile ;
 int * putRGBUAseparate8bittile ;
 int * putRGBseparate16bittile ;
 int * putRGBseparate8bittile ;
 int * putseparate8bitYCbCr11tile ;

__attribute__((used)) static int
PickSeparateCase(TIFFRGBAImage* img)
{
 img->get = TIFFIsTiled(img->tif) ? gtTileSeparate : gtStripSeparate;
 img->put.separate = ((void*)0);
 switch (img->photometric) {
 case 131:
 case 132:

 case 130:
  switch (img->bitspersample) {
  case 8:
   if (img->alpha == EXTRASAMPLE_ASSOCALPHA)
    img->put.separate = putRGBAAseparate8bittile;
   else if (img->alpha == EXTRASAMPLE_UNASSALPHA)
   {
    if (BuildMapUaToAa(img))
     img->put.separate = putRGBUAseparate8bittile;
   }
   else
    img->put.separate = putRGBseparate8bittile;
   break;
  case 16:
   if (img->alpha == EXTRASAMPLE_ASSOCALPHA)
   {
    if (BuildMapBitdepth16To8(img))
     img->put.separate = putRGBAAseparate16bittile;
   }
   else if (img->alpha == EXTRASAMPLE_UNASSALPHA)
   {
    if (BuildMapBitdepth16To8(img) &&
        BuildMapUaToAa(img))
     img->put.separate = putRGBUAseparate16bittile;
   }
   else
   {
    if (BuildMapBitdepth16To8(img))
     img->put.separate = putRGBseparate16bittile;
   }
   break;
  }
  break;
 case 129:
  if (img->bitspersample == 8 && img->samplesperpixel == 4)
  {
   img->alpha = 1;
   img->put.separate = putCMYKseparate8bittile;
  }
  break;
 case 128:
  if ((img->bitspersample==8) && (img->samplesperpixel==3))
  {
   if (initYCbCrConversion(img)!=0)
   {
    uint16 hs, vs;
    TIFFGetFieldDefaulted(img->tif, TIFFTAG_YCBCRSUBSAMPLING, &hs, &vs);
    switch ((hs<<4)|vs) {
    case 0x11:
     img->put.separate = putseparate8bitYCbCr11tile;
     break;

    }
   }
  }
  break;
 }
 return ((img->get!=((void*)0)) && (img->put.separate!=((void*)0)));
}
