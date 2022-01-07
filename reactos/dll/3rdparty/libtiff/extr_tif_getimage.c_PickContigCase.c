
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_9__ {int * contig; } ;
struct TYPE_10__ {int photometric; int bitspersample; int samplesperpixel; TYPE_1__ put; int * get; int tif; int alpha; int Map; } ;
typedef TYPE_2__ TIFFRGBAImage ;


 int BuildMapBitdepth16To8 (TYPE_2__*) ;
 int BuildMapUaToAa (TYPE_2__*) ;
 int EXTRASAMPLE_ASSOCALPHA ;
 int EXTRASAMPLE_UNASSALPHA ;







 int TIFFGetFieldDefaulted (int ,int ,int*,int*) ;
 scalar_t__ TIFFIsTiled (int ) ;
 int TIFFTAG_YCBCRSUBSAMPLING ;
 int buildMap (TYPE_2__*) ;
 int * gtStripContig ;
 int * gtTileContig ;
 int * initCIELabConversion (TYPE_2__*) ;
 int initYCbCrConversion (TYPE_2__*) ;
 int * put16bitbwtile ;
 int * put1bitbwtile ;
 int * put1bitcmaptile ;
 int * put2bitbwtile ;
 int * put2bitcmaptile ;
 int * put4bitbwtile ;
 int * put4bitcmaptile ;
 int * put8bitcmaptile ;
 int * putRGBAAcontig16bittile ;
 int * putRGBAAcontig8bittile ;
 int * putRGBUAcontig16bittile ;
 int * putRGBUAcontig8bittile ;
 int * putRGBcontig16bittile ;
 int * putRGBcontig8bitCMYKMaptile ;
 int * putRGBcontig8bitCMYKtile ;
 int * putRGBcontig8bittile ;
 int * putagreytile ;
 int * putcontig8bitYCbCr11tile ;
 int * putcontig8bitYCbCr12tile ;
 int * putcontig8bitYCbCr21tile ;
 int * putcontig8bitYCbCr22tile ;
 int * putcontig8bitYCbCr41tile ;
 int * putcontig8bitYCbCr42tile ;
 int * putcontig8bitYCbCr44tile ;
 int * putgreytile ;

__attribute__((used)) static int
PickContigCase(TIFFRGBAImage* img)
{
 img->get = TIFFIsTiled(img->tif) ? gtTileContig : gtStripContig;
 img->put.contig = ((void*)0);
 switch (img->photometric) {
  case 130:
   switch (img->bitspersample) {
    case 8:
     if (img->alpha == EXTRASAMPLE_ASSOCALPHA &&
      img->samplesperpixel >= 4)
      img->put.contig = putRGBAAcontig8bittile;
     else if (img->alpha == EXTRASAMPLE_UNASSALPHA &&
        img->samplesperpixel >= 4)
     {
      if (BuildMapUaToAa(img))
       img->put.contig = putRGBUAcontig8bittile;
     }
     else if( img->samplesperpixel >= 3 )
      img->put.contig = putRGBcontig8bittile;
     break;
    case 16:
     if (img->alpha == EXTRASAMPLE_ASSOCALPHA &&
      img->samplesperpixel >=4 )
     {
      if (BuildMapBitdepth16To8(img))
       img->put.contig = putRGBAAcontig16bittile;
     }
     else if (img->alpha == EXTRASAMPLE_UNASSALPHA &&
        img->samplesperpixel >=4 )
     {
      if (BuildMapBitdepth16To8(img) &&
          BuildMapUaToAa(img))
       img->put.contig = putRGBUAcontig16bittile;
     }
     else if( img->samplesperpixel >=3 )
     {
      if (BuildMapBitdepth16To8(img))
       img->put.contig = putRGBcontig16bittile;
     }
     break;
   }
   break;
  case 129:
   if (img->samplesperpixel >=4 && buildMap(img)) {
    if (img->bitspersample == 8) {
     if (!img->Map)
      img->put.contig = putRGBcontig8bitCMYKtile;
     else
      img->put.contig = putRGBcontig8bitCMYKMaptile;
    }
   }
   break;
  case 131:
   if (buildMap(img)) {
    switch (img->bitspersample) {
     case 8:
      img->put.contig = put8bitcmaptile;
      break;
     case 4:
      img->put.contig = put4bitcmaptile;
      break;
     case 2:
      img->put.contig = put2bitcmaptile;
      break;
     case 1:
      img->put.contig = put1bitcmaptile;
      break;
    }
   }
   break;
  case 132:
  case 133:
   if (buildMap(img)) {
    switch (img->bitspersample) {
     case 16:
      img->put.contig = put16bitbwtile;
      break;
     case 8:
      if (img->alpha && img->samplesperpixel == 2)
       img->put.contig = putagreytile;
      else
       img->put.contig = putgreytile;
      break;
     case 4:
      img->put.contig = put4bitbwtile;
      break;
     case 2:
      img->put.contig = put2bitbwtile;
      break;
     case 1:
      img->put.contig = put1bitbwtile;
      break;
    }
   }
   break;
  case 128:
   if ((img->bitspersample==8) && (img->samplesperpixel==3))
   {
    if (initYCbCrConversion(img)!=0)
    {
     uint16 SubsamplingHor;
     uint16 SubsamplingVer;
     TIFFGetFieldDefaulted(img->tif, TIFFTAG_YCBCRSUBSAMPLING, &SubsamplingHor, &SubsamplingVer);
     switch ((SubsamplingHor<<4)|SubsamplingVer) {
      case 0x44:
       img->put.contig = putcontig8bitYCbCr44tile;
       break;
      case 0x42:
       img->put.contig = putcontig8bitYCbCr42tile;
       break;
      case 0x41:
       img->put.contig = putcontig8bitYCbCr41tile;
       break;
      case 0x22:
       img->put.contig = putcontig8bitYCbCr22tile;
       break;
      case 0x21:
       img->put.contig = putcontig8bitYCbCr21tile;
       break;
      case 0x12:
       img->put.contig = putcontig8bitYCbCr12tile;
       break;
      case 0x11:
       img->put.contig = putcontig8bitYCbCr11tile;
       break;
     }
    }
   }
   break;
  case 134:
   if (img->samplesperpixel == 3 && buildMap(img)) {
    if (img->bitspersample == 8)
     img->put.contig = initCIELabConversion(img);
    break;
   }
 }
 return ((img->get!=((void*)0)) && (img->put.contig!=((void*)0)));
}
