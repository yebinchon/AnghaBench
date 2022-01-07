
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;
typedef int VTCompressionSessionRef ;
typedef int OSStatus ;
typedef int * CFStringRef ;


 int SESSION_CHECK (int ) ;
 int * kCVImageBufferColorPrimaries_ITU_R_709_2 ;
 int * kCVImageBufferTransferFunction_ITU_R_709_2 ;
 int kVTCompressionPropertyKey_ColorPrimaries ;
 int kVTCompressionPropertyKey_TransferFunction ;
 int kVTCompressionPropertyKey_YCbCrMatrix ;
 int noErr ;
 int * obs_to_vt_colorspace (int) ;
 int session_set_prop (int ,int ,int *) ;

__attribute__((used)) static OSStatus session_set_colorspace(VTCompressionSessionRef session,
           enum video_colorspace cs)
{
 CFStringRef matrix = obs_to_vt_colorspace(cs);
 OSStatus code;

 if (matrix != ((void*)0)) {
  SESSION_CHECK(session_set_prop(
   session, kVTCompressionPropertyKey_ColorPrimaries,
   kCVImageBufferColorPrimaries_ITU_R_709_2));
  SESSION_CHECK(session_set_prop(
   session, kVTCompressionPropertyKey_TransferFunction,
   kCVImageBufferTransferFunction_ITU_R_709_2));
  SESSION_CHECK(session_set_prop(
   session, kVTCompressionPropertyKey_YCbCrMatrix,
   matrix));
 }

 return noErr;
}
