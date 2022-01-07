
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vt_h264_encoder {int queue; int session; int fps_num; int fps_den; } ;
struct encoder_packet {int dummy; } ;
struct encoder_frame {int pts; int * linesize; int ** data; } ;
typedef int OSStatus ;
typedef int * CVPixelBufferRef ;
typedef int CMTime ;
typedef int * CMSampleBufferRef ;


 int CMSimpleQueueDequeue (int ) ;
 int CMTimeMake (int ,int ) ;
 int CMTimeMultiply (int ,int) ;
 scalar_t__ CVPixelBufferGetBaseAddressOfPlane (int *,int) ;
 size_t CVPixelBufferGetBytesPerRowOfPlane (int *,int) ;
 size_t CVPixelBufferGetHeightOfPlane (int *,int) ;
 int CVPixelBufferLockBaseAddress (int *,int ) ;
 int CVPixelBufferUnlockBaseAddress (int *,int ) ;
 int LOG_ERROR ;
 int MAX_AV_PLANES ;
 int STATUS_CHECK (int ) ;
 int VTCompressionSessionEncodeFrame (int ,int *,int ,int ,int *,int *,int *) ;
 int VT_BLOG (int ,char*) ;
 int get_cached_pixel_buffer (struct vt_h264_encoder*,int **) ;
 int memcpy (int *,int *,int ) ;
 int parse_sample (struct vt_h264_encoder*,int *,struct encoder_packet*,int ) ;

__attribute__((used)) static bool vt_h264_encode(void *data, struct encoder_frame *frame,
      struct encoder_packet *packet, bool *received_packet)
{
 struct vt_h264_encoder *enc = data;

 OSStatus code;

 CMTime dur = CMTimeMake(enc->fps_den, enc->fps_num);
 CMTime off = CMTimeMultiply(dur, 2);
 CMTime pts = CMTimeMultiply(dur, frame->pts);

 CVPixelBufferRef pixbuf = ((void*)0);

 if (!get_cached_pixel_buffer(enc, &pixbuf)) {
  VT_BLOG(LOG_ERROR, "Unable to create pixel buffer");
  goto fail;
 }

 STATUS_CHECK(CVPixelBufferLockBaseAddress(pixbuf, 0));

 for (int i = 0; i < MAX_AV_PLANES; i++) {
  if (frame->data[i] == ((void*)0))
   break;
  uint8_t *p = (uint8_t *)CVPixelBufferGetBaseAddressOfPlane(
   pixbuf, i);
  uint8_t *f = frame->data[i];
  size_t plane_linesize =
   CVPixelBufferGetBytesPerRowOfPlane(pixbuf, i);
  size_t plane_height = CVPixelBufferGetHeightOfPlane(pixbuf, i);

  for (size_t j = 0; j < plane_height; j++) {
   memcpy(p, f, frame->linesize[i]);
   p += plane_linesize;
   f += frame->linesize[i];
  }
 }

 STATUS_CHECK(CVPixelBufferUnlockBaseAddress(pixbuf, 0));

 STATUS_CHECK(VTCompressionSessionEncodeFrame(enc->session, pixbuf, pts,
           dur, ((void*)0), pixbuf, ((void*)0)));

 CMSampleBufferRef buffer =
  (CMSampleBufferRef)CMSimpleQueueDequeue(enc->queue);


 if (buffer == ((void*)0))
  return 1;

 *received_packet = 1;
 return parse_sample(enc, buffer, packet, off);

fail:
 return 0;
}
