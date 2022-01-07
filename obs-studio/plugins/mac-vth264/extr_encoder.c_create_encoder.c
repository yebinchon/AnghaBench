
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_h264_encoder {int hw_enc; float keyint; float fps_den; int session; int colorspace; int rc_max_bitrate_window; int rc_max_bitrate; int limit_bitrate; int bitrate; int profile; scalar_t__ bframes; scalar_t__ fps_num; int queue; int height; int width; int vt_encoder_id; } ;
typedef int VTCompressionSessionRef ;
typedef scalar_t__ OSStatus ;
typedef int * CFDictionaryRef ;
typedef int * CFBooleanRef ;


 int CFBooleanGetValue (int *) ;
 int CFRelease (int *) ;
 int LOG_INFO ;
 int LOG_WARNING ;
 int STATUS_CHECK (scalar_t__) ;
 scalar_t__ VTCompressionSessionCreate (int ,int ,int ,int ,int *,int *,int *,int *,int ,int *) ;
 scalar_t__ VTCompressionSessionPrepareToEncodeFrames (int ) ;
 scalar_t__ VTSessionCopyProperty (int ,int ,int *,int **) ;
 int VT_BLOG (int ,char*) ;
 float ceil (float) ;
 int * create_encoder_spec (int ) ;
 int * create_pixbuf_spec (struct vt_h264_encoder*) ;
 int kCFAllocatorDefault ;
 int kCFBooleanFalse ;
 int kCFBooleanTrue ;
 int kCMVideoCodecType_H264 ;
 int kVTCompressionPropertyKey_AllowFrameReordering ;
 int kVTCompressionPropertyKey_ExpectedFrameRate ;
 int kVTCompressionPropertyKey_MaxKeyFrameInterval ;
 int kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration ;
 int kVTCompressionPropertyKey_ProfileLevel ;
 int kVTCompressionPropertyKey_RealTime ;
 int kVTCompressionPropertyKey_UsingHardwareAcceleratedVideoEncoder ;
 int log_osstatus (int ,struct vt_h264_encoder*,char*,scalar_t__) ;
 scalar_t__ noErr ;
 int obs_to_vt_profile (int ) ;
 int sample_encoded_callback ;
 scalar_t__ session_set_bitrate (int ,int ,int ,int ,int ) ;
 scalar_t__ session_set_colorspace (int ,int ) ;
 scalar_t__ session_set_prop (int ,int ,int ) ;
 scalar_t__ session_set_prop_int (int ,int ,float) ;

__attribute__((used)) static bool create_encoder(struct vt_h264_encoder *enc)
{
 OSStatus code;

 VTCompressionSessionRef s;

 CFDictionaryRef encoder_spec = create_encoder_spec(enc->vt_encoder_id);
 CFDictionaryRef pixbuf_spec = create_pixbuf_spec(enc);

 STATUS_CHECK(VTCompressionSessionCreate(
  kCFAllocatorDefault, enc->width, enc->height,
  kCMVideoCodecType_H264, encoder_spec, pixbuf_spec, ((void*)0),
  &sample_encoded_callback, enc->queue, &s));

 CFRelease(encoder_spec);
 CFRelease(pixbuf_spec);

 CFBooleanRef b = ((void*)0);
 code = VTSessionCopyProperty(
  s,
  kVTCompressionPropertyKey_UsingHardwareAcceleratedVideoEncoder,
  ((void*)0), &b);

 if (code == noErr && (enc->hw_enc = CFBooleanGetValue(b)))
  VT_BLOG(LOG_INFO, "session created with hardware encoding");
 else
  enc->hw_enc = 0;

 if (b != ((void*)0))
  CFRelease(b);

 STATUS_CHECK(session_set_prop_int(
  s, kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration,
  enc->keyint));
 STATUS_CHECK(session_set_prop_int(
  s, kVTCompressionPropertyKey_MaxKeyFrameInterval,
  enc->keyint * ((float)enc->fps_num / enc->fps_den)));
 STATUS_CHECK(session_set_prop_int(
  s, kVTCompressionPropertyKey_ExpectedFrameRate,
  ceil((float)enc->fps_num / enc->fps_den)));
 STATUS_CHECK(session_set_prop(
  s, kVTCompressionPropertyKey_AllowFrameReordering,
  enc->bframes ? kCFBooleanTrue : kCFBooleanFalse));


 code = session_set_prop(s, kVTCompressionPropertyKey_RealTime,
    kCFBooleanTrue);
 if (code != noErr)
  log_osstatus(LOG_WARNING, enc,
        "setting "
        "kVTCompressionPropertyKey_RealTime, "
        "frame delay might be increased",
        code);

 STATUS_CHECK(session_set_prop(s, kVTCompressionPropertyKey_ProfileLevel,
          obs_to_vt_profile(enc->profile)));

 STATUS_CHECK(session_set_bitrate(s, enc->bitrate, enc->limit_bitrate,
      enc->rc_max_bitrate,
      enc->rc_max_bitrate_window));

 STATUS_CHECK(session_set_colorspace(s, enc->colorspace));

 STATUS_CHECK(VTCompressionSessionPrepareToEncodeFrames(s));

 enc->session = s;

 return 1;

fail:
 if (encoder_spec != ((void*)0))
  CFRelease(encoder_spec);
 if (pixbuf_spec != ((void*)0))
  CFRelease(pixbuf_spec);

 return 0;
}
