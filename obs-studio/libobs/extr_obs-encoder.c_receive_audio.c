
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_encoder {int first_received; scalar_t__ framesize_bytes; TYPE_1__* audio_input_buffer; int samplerate; int pause; int first_raw_ts; } ;
struct audio_data {int timestamp; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int UNUSED_PARAMETER (size_t) ;
 scalar_t__ audio_pause_check (int *,struct audio_data*,int ) ;
 int buffer_audio (struct obs_encoder*,struct audio_data*) ;
 int clear_audio (struct obs_encoder*) ;
 int profile_end (int ) ;
 int profile_start (int ) ;
 int receive_audio_name ;
 int send_audio_data (struct obs_encoder*) ;

__attribute__((used)) static void receive_audio(void *param, size_t mix_idx, struct audio_data *in)
{
 profile_start(receive_audio_name);

 struct obs_encoder *encoder = param;
 struct audio_data audio = *in;

 if (!encoder->first_received) {
  encoder->first_raw_ts = audio.timestamp;
  encoder->first_received = 1;
  clear_audio(encoder);
 }

 if (audio_pause_check(&encoder->pause, &audio, encoder->samplerate))
  goto end;

 if (!buffer_audio(encoder, &audio))
  goto end;

 while (encoder->audio_input_buffer[0].size >=
        encoder->framesize_bytes) {
  if (!send_audio_data(encoder)) {
   break;
  }
 }

 UNUSED_PARAMETER(mix_idx);

end:
 profile_end(receive_audio_name);
}
