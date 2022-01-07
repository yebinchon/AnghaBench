
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tjhandle ;
struct TYPE_10__ {int image_width; int image_height; int jpeg_color_space; } ;
struct TYPE_8__ {scalar_t__ warning; int setjmp_buffer; } ;
struct TYPE_9__ {int init; TYPE_1__ jerr; } ;


 int DECOMPRESS ;





 int TJCS_CMYK ;
 int TJCS_GRAY ;
 int TJCS_RGB ;
 int TJCS_YCCK ;
 int TJCS_YCbCr ;
 int TRUE ;
 int _throw (char*) ;
 TYPE_3__* dinfo ;
 int getSubsamp (TYPE_3__*) ;
 int getdinstance (int ) ;
 int jpeg_abort_decompress (TYPE_3__*) ;
 int jpeg_mem_src_tj (TYPE_3__*,unsigned char const*,unsigned long) ;
 int jpeg_read_header (TYPE_3__*,int ) ;
 scalar_t__ setjmp (int ) ;
 TYPE_2__* this ;

int tjDecompressHeader3(tjhandle handle,
                                  const unsigned char *jpegBuf,
                                  unsigned long jpegSize, int *width,
                                  int *height, int *jpegSubsamp,
                                  int *jpegColorspace)
{
 int retval=0;

 getdinstance(handle);
 if((this->init&DECOMPRESS)==0)
  _throw("tjDecompressHeader3(): Instance has not been initialized for decompression");

  if (jpegBuf == ((void*)0) || jpegSize <= 0 || width == ((void*)0) || height == ((void*)0) ||
      jpegSubsamp == ((void*)0) || jpegColorspace == ((void*)0))
  _throw("tjDecompressHeader3(): Invalid argument");

  if (setjmp(this->jerr.setjmp_buffer)) {

  return -1;
 }

 jpeg_mem_src_tj(dinfo, jpegBuf, jpegSize);
 jpeg_read_header(dinfo, TRUE);

 *width=dinfo->image_width;
 *height=dinfo->image_height;
 *jpegSubsamp=getSubsamp(dinfo);
  switch (dinfo->jpeg_color_space) {
  case 131: *jpegColorspace=TJCS_GRAY; break;
  case 130: *jpegColorspace=TJCS_RGB; break;
  case 128: *jpegColorspace=TJCS_YCbCr; break;
  case 132: *jpegColorspace=TJCS_CMYK; break;
  case 129: *jpegColorspace=TJCS_YCCK; break;
  default: *jpegColorspace=-1; break;
 }

 jpeg_abort_decompress(dinfo);

 if(*jpegSubsamp<0)
  _throw("tjDecompressHeader3(): Could not determine subsampling type for JPEG image");
 if(*jpegColorspace<0)
  _throw("tjDecompressHeader3(): Could not determine colorspace of JPEG image");
 if(*width<1 || *height<1)
  _throw("tjDecompressHeader3(): Invalid data returned in header");

 bailout:
 if(this->jerr.warning) retval=-1;
 return retval;
}
