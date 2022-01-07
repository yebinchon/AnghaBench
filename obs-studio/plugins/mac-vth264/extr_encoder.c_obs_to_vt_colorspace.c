
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;
typedef int * CFStringRef ;


 int VIDEO_CS_601 ;
 int VIDEO_CS_709 ;
 int * kCVImageBufferYCbCrMatrix_ITU_R_601_4 ;
 int * kCVImageBufferYCbCrMatrix_ITU_R_709_2 ;

__attribute__((used)) static CFStringRef obs_to_vt_colorspace(enum video_colorspace cs)
{
 if (cs == VIDEO_CS_709)
  return kCVImageBufferYCbCrMatrix_ITU_R_709_2;
 else if (cs == VIDEO_CS_601)
  return kCVImageBufferYCbCrMatrix_ITU_R_601_4;

 return ((void*)0);
}
