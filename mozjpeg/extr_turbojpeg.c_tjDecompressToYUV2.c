
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tjhandle ;
struct TYPE_9__ {int image_width; int image_height; } ;
struct TYPE_7__ {void* stopOnWarning; int setjmp_buffer; } ;
struct TYPE_8__ {int headerRead; TYPE_1__ jerr; } ;


 void* FALSE ;
 int NUMSF ;
 int PAD (int,int) ;
 int TJFLAG_STOPONWARNING ;
 int TJSAMP_GRAY ;
 int TJSCALED (int,int ) ;
 void* TRUE ;
 int _throw (char*) ;
 TYPE_3__* dinfo ;
 int getSubsamp (TYPE_3__*) ;
 int getdinstance (int ) ;
 int isPow2 (int) ;
 int jpeg_mem_src_tj (TYPE_3__*,unsigned char const*,unsigned long) ;
 int jpeg_read_header (TYPE_3__*,void*) ;
 scalar_t__ setjmp (int ) ;
 int * sf ;
 TYPE_2__* this ;
 int tjDecompressToYUVPlanes (int ,unsigned char const*,unsigned long,unsigned char**,int,int*,int,int) ;
 int tjPlaneHeight (int,int,int) ;
 int tjPlaneWidth (int,int,int) ;

int tjDecompressToYUV2(tjhandle handle, const unsigned char *jpegBuf,
                                 unsigned long jpegSize, unsigned char *dstBuf,
 int width, int pad, int height, int flags)
{
 unsigned char *dstPlanes[3];
 int pw0, ph0, strides[3], retval=-1, jpegSubsamp=-1;
 int i, jpegwidth, jpegheight, scaledw, scaledh;

 getdinstance(handle);
  this->jerr.stopOnWarning = (flags & TJFLAG_STOPONWARNING) ? TRUE : FALSE;

  if (jpegBuf == ((void*)0) || jpegSize <= 0 || dstBuf == ((void*)0) || width < 0 ||
      pad < 1 || !isPow2(pad) || height < 0)
  _throw("tjDecompressToYUV2(): Invalid argument");

  if (setjmp(this->jerr.setjmp_buffer)) {

  return -1;
 }

 jpeg_mem_src_tj(dinfo, jpegBuf, jpegSize);
 jpeg_read_header(dinfo, TRUE);
 jpegSubsamp=getSubsamp(dinfo);
 if(jpegSubsamp<0)
  _throw("tjDecompressToYUV2(): Could not determine subsampling type for JPEG image");

 jpegwidth=dinfo->image_width; jpegheight=dinfo->image_height;
 if(width==0) width=jpegwidth;
 if(height==0) height=jpegheight;

  for (i = 0; i < NUMSF; i++) {
  scaledw=TJSCALED(jpegwidth, sf[i]);
  scaledh=TJSCALED(jpegheight, sf[i]);
  if(scaledw<=width && scaledh<=height)
   break;
 }
 if(i>=NUMSF)
  _throw("tjDecompressToYUV2(): Could not scale down to desired image dimensions");

 pw0=tjPlaneWidth(0, width, jpegSubsamp);
 ph0=tjPlaneHeight(0, height, jpegSubsamp);
 dstPlanes[0]=dstBuf;
 strides[0]=PAD(pw0, pad);
  if (jpegSubsamp == TJSAMP_GRAY) {
  strides[1]=strides[2]=0;
  dstPlanes[1]=dstPlanes[2]=((void*)0);
  } else {
  int pw1=tjPlaneWidth(1, width, jpegSubsamp);
  int ph1=tjPlaneHeight(1, height, jpegSubsamp);

  strides[1]=strides[2]=PAD(pw1, pad);
  dstPlanes[1]=dstPlanes[0]+strides[0]*ph0;
  dstPlanes[2]=dstPlanes[1]+strides[1]*ph1;
 }

 this->headerRead=1;
 return tjDecompressToYUVPlanes(handle, jpegBuf, jpegSize, dstPlanes, width,
  strides, height, flags);

 bailout:
  this->jerr.stopOnWarning = FALSE;
 return retval;
}
