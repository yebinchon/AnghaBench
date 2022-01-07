
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vt_h264_encoder {scalar_t__ bitrate; int limit_bitrate; int session; int rc_max_bitrate_window; int rc_max_bitrate; } ;
typedef int obs_data_t ;
typedef scalar_t__ OSStatus ;
typedef int CFNumberRef ;


 int CFNumberGetValue (int ,int ,scalar_t__*) ;
 int CFRelease (int ) ;
 int LOG_WARNING ;
 int VTSessionCopyProperty (int ,int ,int *,int *) ;
 int VT_BLOG (int ,char*,...) ;
 int dump_encoder_info (struct vt_h264_encoder*) ;
 int kCFNumberIntType ;
 int kVTCompressionPropertyKey_AverageBitRate ;
 scalar_t__ noErr ;
 scalar_t__ session_set_bitrate (int ,scalar_t__,int,int ,int ) ;
 int update_params (struct vt_h264_encoder*,int *) ;

__attribute__((used)) static bool vt_h264_update(void *data, obs_data_t *settings)
{
 struct vt_h264_encoder *enc = data;

 uint32_t old_bitrate = enc->bitrate;
 bool old_limit_bitrate = enc->limit_bitrate;

 update_params(enc, settings);

 if (old_bitrate == enc->bitrate &&
     old_limit_bitrate == enc->limit_bitrate)
  return 1;

 OSStatus code = session_set_bitrate(enc->session, enc->bitrate,
         enc->limit_bitrate,
         enc->rc_max_bitrate,
         enc->rc_max_bitrate_window);
 if (code != noErr)
  VT_BLOG(LOG_WARNING, "failed to set bitrate to session");

 CFNumberRef n;
 VTSessionCopyProperty(enc->session,
         kVTCompressionPropertyKey_AverageBitRate, ((void*)0),
         &n);

 uint32_t session_bitrate;
 CFNumberGetValue(n, kCFNumberIntType, &session_bitrate);
 CFRelease(n);

 if (session_bitrate == old_bitrate) {
  VT_BLOG(LOG_WARNING,
   "failed to update current session "
   " bitrate from %d->%d",
   old_bitrate, enc->bitrate);
 }

 dump_encoder_info(enc);
 return 1;
}
