
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num; int array; int da; } ;
struct darray {int dummy; } ;
struct TYPE_3__ {scalar_t__ num; struct darray da; } ;
struct vt_h264_encoder {int fps_den; TYPE_2__ packet_data; TYPE_1__ extra_data; scalar_t__ bframes; scalar_t__ fps_num; } ;
struct encoder_packet {int keyframe; int size; int data; void* dts; void* pts; int type; } ;
typedef void* int64_t ;
typedef int Float64 ;
typedef int CMTime ;
typedef int CMSampleBufferRef ;


 int CFRelease (int ) ;
 int CMSampleBufferGetDecodeTimeStamp (int ) ;
 int CMSampleBufferGetPresentationTimeStamp (int ) ;
 scalar_t__ CMTimeGetSeconds (int ) ;
 int CMTimeMultiplyByFloat64 (int ,int) ;
 int CMTimeSubtract (int ,int ) ;
 int OBS_ENCODER_VIDEO ;
 int convert_sample_to_annexb (struct vt_h264_encoder*,int *,struct darray*,int ,int) ;
 int da_resize (TYPE_2__,int ) ;
 int is_sample_keyframe (int ) ;

__attribute__((used)) static bool parse_sample(struct vt_h264_encoder *enc, CMSampleBufferRef buffer,
    struct encoder_packet *packet, CMTime off)
{
 CMTime pts = CMSampleBufferGetPresentationTimeStamp(buffer);
 CMTime dts = CMSampleBufferGetDecodeTimeStamp(buffer);

 pts = CMTimeMultiplyByFloat64(pts,
          ((Float64)enc->fps_num / enc->fps_den));
 dts = CMTimeMultiplyByFloat64(dts,
          ((Float64)enc->fps_num / enc->fps_den));


 if (enc->bframes)
  dts = CMTimeSubtract(dts, off);

 bool keyframe = is_sample_keyframe(buffer);

 da_resize(enc->packet_data, 0);


 struct darray *extra_data = ((void*)0);
 if (enc->extra_data.num == 0)
  extra_data = &enc->extra_data.da;

 if (!convert_sample_to_annexb(enc, &enc->packet_data.da, extra_data,
          buffer, keyframe))
  goto fail;

 packet->type = OBS_ENCODER_VIDEO;
 packet->pts = (int64_t)(CMTimeGetSeconds(pts));
 packet->dts = (int64_t)(CMTimeGetSeconds(dts));
 packet->data = enc->packet_data.array;
 packet->size = enc->packet_data.num;
 packet->keyframe = keyframe;

 CFRelease(buffer);
 return 1;

fail:
 CFRelease(buffer);
 return 0;
}
