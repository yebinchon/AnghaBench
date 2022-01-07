
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_h264_encoder {int dummy; } ;
struct darray {int dummy; } ;
typedef scalar_t__ OSStatus ;
typedef int CMSampleBufferRef ;
typedef int CMFormatDescriptionRef ;
typedef int CMBlockBufferRef ;


 int CMSampleBufferGetDataBuffer (int ) ;
 int CMSampleBufferGetFormatDescription (int ) ;
 scalar_t__ CMVideoFormatDescriptionGetH264ParameterSetAtIndex (int ,int ,int *,int *,size_t*,int*) ;
 int LOG_ERROR ;
 int LOG_WARNING ;
 int VT_BLOG (int ,char*) ;
 int convert_block_nals_to_annexb (struct vt_h264_encoder*,struct darray*,int ,int) ;
 int handle_keyframe (struct vt_h264_encoder*,int ,size_t,struct darray*,struct darray*) ;
 scalar_t__ kCMFormatDescriptionBridgeError_InvalidParameter_ ;
 scalar_t__ kCMFormatDescriptionError_InvalidParameter ;
 int log_osstatus (int ,struct vt_h264_encoder*,char*,scalar_t__) ;
 scalar_t__ noErr ;

__attribute__((used)) static bool convert_sample_to_annexb(struct vt_h264_encoder *enc,
         struct darray *packet,
         struct darray *extra_data,
         CMSampleBufferRef buffer, bool keyframe)
{
 OSStatus code;
 CMFormatDescriptionRef format_desc =
  CMSampleBufferGetFormatDescription(buffer);

 size_t param_count;
 int nal_length_bytes;
 code = CMVideoFormatDescriptionGetH264ParameterSetAtIndex(
  format_desc, 0, ((void*)0), ((void*)0), &param_count, &nal_length_bytes);


 if (code == kCMFormatDescriptionBridgeError_InvalidParameter_ ||
     code == kCMFormatDescriptionError_InvalidParameter) {
  VT_BLOG(LOG_WARNING, "assuming 2 parameter sets "
         "and 4 byte NAL length header");
  param_count = 2;
  nal_length_bytes = 4;

 } else if (code != noErr) {
  log_osstatus(LOG_ERROR, enc,
        "getting parameter count from sample", code);
  return 0;
 }

 if (keyframe &&
     !handle_keyframe(enc, format_desc, param_count, packet, extra_data))
  return 0;

 CMBlockBufferRef block = CMSampleBufferGetDataBuffer(buffer);
 convert_block_nals_to_annexb(enc, packet, block, nal_length_bytes);

 return 1;
}
