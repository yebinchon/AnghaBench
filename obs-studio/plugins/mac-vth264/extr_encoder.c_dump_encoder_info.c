
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_h264_encoder {char* profile; scalar_t__ hw_enc; int rc_max_bitrate_window; int rc_max_bitrate; scalar_t__ limit_bitrate; int keyint; int height; int width; int fps_den; int fps_num; int bitrate; int vt_encoder_id; } ;


 int LOG_INFO ;
 int VT_BLOG (int ,char*,int ,int ,int ,int ,int ,int ,int ,char*,int ,int ,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void dump_encoder_info(struct vt_h264_encoder *enc)
{
 VT_BLOG(LOG_INFO,
  "settings:\n"
  "\tvt_encoder_id          %s\n"
  "\tbitrate:               %d (kbps)\n"
  "\tfps_num:               %d\n"
  "\tfps_den:               %d\n"
  "\twidth:                 %d\n"
  "\theight:                %d\n"
  "\tkeyint:                %d (s)\n"
  "\tlimit_bitrate:         %s\n"
  "\trc_max_bitrate:        %d (kbps)\n"
  "\trc_max_bitrate_window: %f (s)\n"
  "\thw_enc:                %s\n"
  "\tprofile:               %s\n",
  enc->vt_encoder_id, enc->bitrate, enc->fps_num, enc->fps_den,
  enc->width, enc->height, enc->keyint,
  enc->limit_bitrate ? "on" : "off", enc->rc_max_bitrate,
  enc->rc_max_bitrate_window, enc->hw_enc ? "on" : "off",
  (enc->profile != ((void*)0) && !!strlen(enc->profile)) ? enc->profile
         : "default");
}
