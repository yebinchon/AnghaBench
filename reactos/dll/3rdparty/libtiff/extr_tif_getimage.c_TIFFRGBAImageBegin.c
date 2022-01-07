
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_6__ {int* redcmap; int* greencmap; int* bluecmap; int stoponerr; int bitspersample; int alpha; int samplesperpixel; int photometric; int width; int height; int orientation; int isContig; int * tif; int req_orientation; int * Bitdepth16To8; int * UaToAa; int * cielab; int * ycbcr; int * PALmap; int * BWmap; int * Map; scalar_t__ col_offset; scalar_t__ row_offset; } ;
typedef TYPE_1__ TIFFRGBAImage ;
typedef int TIFF ;



 int COMPRESSION_SGILOG ;
 int COMPRESSION_SGILOG24 ;



 int INKSET_CMYK ;
 int JPEGCOLORMODE_RGB ;
 int ORIENTATION_BOTLEFT ;
 int PLANARCONFIG_CONTIG ;
 int PLANARCONFIG_SEPARATE ;
 int PickContigCase (TYPE_1__*) ;
 int PickSeparateCase (TYPE_1__*) ;
 int SGILOGDATAFMT_8BIT ;
 int TIFFGetField (int *,int ,...) ;
 int TIFFGetFieldDefaulted (int *,int ,int*,...) ;
 int TIFFRGBAImageEnd (TYPE_1__*) ;
 int TIFFRGBAImageOK (int *,char*) ;
 int TIFFSetField (int *,int ,int ) ;
 int TIFFTAG_BITSPERSAMPLE ;
 int TIFFTAG_COLORMAP ;
 int TIFFTAG_COMPRESSION ;
 int TIFFTAG_EXTRASAMPLES ;
 int TIFFTAG_IMAGELENGTH ;
 int TIFFTAG_IMAGEWIDTH ;
 int TIFFTAG_INKSET ;
 int TIFFTAG_JPEGCOLORMODE ;
 int TIFFTAG_ORIENTATION ;
 int TIFFTAG_PHOTOMETRIC ;
 int TIFFTAG_PLANARCONFIG ;
 int TIFFTAG_SAMPLESPERPIXEL ;
 int TIFFTAG_SGILOGDATAFMT ;
 scalar_t__ _TIFFmalloc (int) ;
 int _TIFFmemcpy (int*,int*,int) ;
 int isCCITTCompression (int *) ;
 char* photoTag ;
 int sprintf (char*,char*,...) ;

int
TIFFRGBAImageBegin(TIFFRGBAImage* img, TIFF* tif, int stop, char emsg[1024])
{
 uint16* sampleinfo;
 uint16 extrasamples;
 uint16 planarconfig;
 uint16 compress;
 int colorchannels;
 uint16 *red_orig, *green_orig, *blue_orig;
 int n_color;

 if( !TIFFRGBAImageOK(tif, emsg) )
  return 0;


 img->row_offset = 0;
 img->col_offset = 0;
 img->redcmap = ((void*)0);
 img->greencmap = ((void*)0);
 img->bluecmap = ((void*)0);
 img->Map = ((void*)0);
 img->BWmap = ((void*)0);
 img->PALmap = ((void*)0);
 img->ycbcr = ((void*)0);
 img->cielab = ((void*)0);
 img->UaToAa = ((void*)0);
 img->Bitdepth16To8 = ((void*)0);
 img->req_orientation = ORIENTATION_BOTLEFT;

 img->tif = tif;
 img->stoponerr = stop;
 TIFFGetFieldDefaulted(tif, TIFFTAG_BITSPERSAMPLE, &img->bitspersample);
 switch (img->bitspersample) {
  case 1:
  case 2:
  case 4:
  case 8:
  case 16:
   break;
  default:
   sprintf(emsg, "Sorry, can not handle images with %d-bit samples",
       img->bitspersample);
   goto fail_return;
 }
 img->alpha = 0;
 TIFFGetFieldDefaulted(tif, TIFFTAG_SAMPLESPERPIXEL, &img->samplesperpixel);
 TIFFGetFieldDefaulted(tif, TIFFTAG_EXTRASAMPLES,
     &extrasamples, &sampleinfo);
 if (extrasamples >= 1)
 {
  switch (sampleinfo[0]) {
   case 137:
    if (img->samplesperpixel > 3)
     img->alpha = 139;
    break;
   case 139:
   case 138:
    img->alpha = sampleinfo[0];
    break;
  }
 }
 colorchannels = img->samplesperpixel - extrasamples;
 TIFFGetFieldDefaulted(tif, TIFFTAG_COMPRESSION, &compress);
 TIFFGetFieldDefaulted(tif, TIFFTAG_PLANARCONFIG, &planarconfig);
 if (!TIFFGetField(tif, TIFFTAG_PHOTOMETRIC, &img->photometric)) {
  switch (colorchannels) {
   case 1:
    if (isCCITTCompression(tif))
     img->photometric = 132;
    else
     img->photometric = 133;
    break;
   case 3:
    img->photometric = 130;
    break;
   default:
    sprintf(emsg, "Missing needed %s tag", photoTag);
                                goto fail_return;
  }
 }
 switch (img->photometric) {
  case 131:
   if (!TIFFGetField(tif, TIFFTAG_COLORMAP,
       &red_orig, &green_orig, &blue_orig)) {
    sprintf(emsg, "Missing required \"Colormap\" tag");
                                goto fail_return;
   }


   n_color = (1U << img->bitspersample);
   img->redcmap = (uint16 *) _TIFFmalloc(sizeof(uint16)*n_color);
   img->greencmap = (uint16 *) _TIFFmalloc(sizeof(uint16)*n_color);
   img->bluecmap = (uint16 *) _TIFFmalloc(sizeof(uint16)*n_color);
   if( !img->redcmap || !img->greencmap || !img->bluecmap ) {
    sprintf(emsg, "Out of memory for colormap copy");
                                goto fail_return;
   }

   _TIFFmemcpy( img->redcmap, red_orig, n_color * 2 );
   _TIFFmemcpy( img->greencmap, green_orig, n_color * 2 );
   _TIFFmemcpy( img->bluecmap, blue_orig, n_color * 2 );


  case 132:
  case 133:
   if (planarconfig == PLANARCONFIG_CONTIG
       && img->samplesperpixel != 1
       && img->bitspersample < 8 ) {
    sprintf(emsg,
        "Sorry, can not handle contiguous data with %s=%d, "
        "and %s=%d and Bits/Sample=%d",
        photoTag, img->photometric,
        "Samples/pixel", img->samplesperpixel,
        img->bitspersample);
                                goto fail_return;
   }
   break;
  case 128:

   if (planarconfig == PLANARCONFIG_CONTIG)


    switch (compress) {
     case 140:





      TIFFSetField(tif, TIFFTAG_JPEGCOLORMODE, JPEGCOLORMODE_RGB);
      img->photometric = 130;
      break;
     default:
                      ;
      break;
    }






   break;
  case 130:
   if (colorchannels < 3) {
    sprintf(emsg, "Sorry, can not handle RGB image with %s=%d",
        "Color channels", colorchannels);
                                goto fail_return;
   }
   break;
  case 129:
   {
    uint16 inkset;
    TIFFGetFieldDefaulted(tif, TIFFTAG_INKSET, &inkset);
    if (inkset != INKSET_CMYK) {
     sprintf(emsg, "Sorry, can not handle separated image with %s=%d",
         "InkSet", inkset);
                                        goto fail_return;
    }
    if (img->samplesperpixel < 4) {
     sprintf(emsg, "Sorry, can not handle separated image with %s=%d",
         "Samples/pixel", img->samplesperpixel);
                                        goto fail_return;
    }
   }
   break;
  case 135:
   if (compress != COMPRESSION_SGILOG) {
    sprintf(emsg, "Sorry, LogL data must have %s=%d",
        "Compression", COMPRESSION_SGILOG);
                                goto fail_return;
   }
   TIFFSetField(tif, TIFFTAG_SGILOGDATAFMT, SGILOGDATAFMT_8BIT);
   img->photometric = 133;
   img->bitspersample = 8;
   break;
  case 134:
   if (compress != COMPRESSION_SGILOG && compress != COMPRESSION_SGILOG24) {
    sprintf(emsg, "Sorry, LogLuv data must have %s=%d or %d",
        "Compression", COMPRESSION_SGILOG, COMPRESSION_SGILOG24);
                                goto fail_return;
   }
   if (planarconfig != PLANARCONFIG_CONTIG) {
    sprintf(emsg, "Sorry, can not handle LogLuv images with %s=%d",
        "Planarconfiguration", planarconfig);
    return (0);
   }
   TIFFSetField(tif, TIFFTAG_SGILOGDATAFMT, SGILOGDATAFMT_8BIT);
   img->photometric = 130;
   img->bitspersample = 8;
   break;
  case 136:
   break;
  default:
   sprintf(emsg, "Sorry, can not handle image with %s=%d",
       photoTag, img->photometric);
                        goto fail_return;
 }
 TIFFGetField(tif, TIFFTAG_IMAGEWIDTH, &img->width);
 TIFFGetField(tif, TIFFTAG_IMAGELENGTH, &img->height);
 TIFFGetFieldDefaulted(tif, TIFFTAG_ORIENTATION, &img->orientation);
 img->isContig =
     !(planarconfig == PLANARCONFIG_SEPARATE && img->samplesperpixel > 1);
 if (img->isContig) {
  if (!PickContigCase(img)) {
   sprintf(emsg, "Sorry, can not handle image");
   goto fail_return;
  }
 } else {
  if (!PickSeparateCase(img)) {
   sprintf(emsg, "Sorry, can not handle image");
   goto fail_return;
  }
 }
 return 1;

  fail_return:
        TIFFRGBAImageEnd( img );
        return 0;
}
