
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {scalar_t__ timestamp; int * linesize; int * data; } ;
struct obs_encoder {scalar_t__ first_raw_ts; scalar_t__ start_ts; scalar_t__ timebase_num; int cur_pts; int pause; int first_received; struct obs_encoder* paired_encoder; } ;
struct encoder_frame {int frames; int pts; int * linesize; int * data; } ;


 size_t MAX_AV_PLANES ;
 scalar_t__ do_encode (struct obs_encoder*,struct encoder_frame*) ;
 int memset (struct encoder_frame*,int ,int) ;
 int profile_end (int ) ;
 int profile_start (int ) ;
 int receive_video_name ;
 scalar_t__ video_pause_check (int *,scalar_t__) ;

__attribute__((used)) static void receive_video(void *param, struct video_data *frame)
{
 profile_start(receive_video_name);

 struct obs_encoder *encoder = param;
 struct obs_encoder *pair = encoder->paired_encoder;
 struct encoder_frame enc_frame;

 if (!encoder->first_received && pair) {
  if (!pair->first_received ||
      pair->first_raw_ts > frame->timestamp) {
   goto wait_for_audio;
  }
 }

 if (video_pause_check(&encoder->pause, frame->timestamp))
  goto wait_for_audio;

 memset(&enc_frame, 0, sizeof(struct encoder_frame));

 for (size_t i = 0; i < MAX_AV_PLANES; i++) {
  enc_frame.data[i] = frame->data[i];
  enc_frame.linesize[i] = frame->linesize[i];
 }

 if (!encoder->start_ts)
  encoder->start_ts = frame->timestamp;

 enc_frame.frames = 1;
 enc_frame.pts = encoder->cur_pts;

 if (do_encode(encoder, &enc_frame))
  encoder->cur_pts += encoder->timebase_num;

wait_for_audio:
 profile_end(receive_video_name);
}
