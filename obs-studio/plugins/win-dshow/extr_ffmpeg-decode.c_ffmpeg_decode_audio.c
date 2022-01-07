
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct obs_source_audio {scalar_t__ format; int frames; int speakers; int samples_per_sec; int * data; } ;
struct ffmpeg_decode {TYPE_5__* frame; TYPE_2__* decoder; int packet_buffer; } ;
struct TYPE_10__ {int nb_samples; int format; int sample_rate; int * data; } ;
struct TYPE_9__ {scalar_t__ channels; } ;
struct TYPE_8__ {int size; int data; int member_0; } ;
typedef TYPE_1__ AVPacket ;


 scalar_t__ AUDIO_FORMAT_UNKNOWN ;
 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 size_t MAX_AV_PLANES ;
 TYPE_5__* av_frame_alloc () ;
 int av_init_packet (TYPE_1__*) ;
 int avcodec_receive_frame (TYPE_2__*,TYPE_5__*) ;
 int avcodec_send_packet (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ convert_sample_format (int ) ;
 int convert_speaker_layout (int ) ;
 int copy_data (struct ffmpeg_decode*,int *,size_t) ;

bool ffmpeg_decode_audio(struct ffmpeg_decode *decode, uint8_t *data,
    size_t size, struct obs_source_audio *audio,
    bool *got_output)
{
 AVPacket packet = {0};
 int got_frame = 0;
 int ret = 0;

 *got_output = 0;

 copy_data(decode, data, size);

 av_init_packet(&packet);
 packet.data = decode->packet_buffer;
 packet.size = (int)size;

 if (!decode->frame) {
  decode->frame = av_frame_alloc();
  if (!decode->frame)
   return 0;
 }

 if (data && size)
  ret = avcodec_send_packet(decode->decoder, &packet);
 if (ret == 0)
  ret = avcodec_receive_frame(decode->decoder, decode->frame);

 got_frame = (ret == 0);

 if (ret == AVERROR_EOF || ret == AVERROR(EAGAIN))
  ret = 0;

 if (ret < 0)
  return 0;
 else if (!got_frame)
  return 1;

 for (size_t i = 0; i < MAX_AV_PLANES; i++)
  audio->data[i] = decode->frame->data[i];

 audio->samples_per_sec = decode->frame->sample_rate;
 audio->format = convert_sample_format(decode->frame->format);
 audio->speakers =
  convert_speaker_layout((uint8_t)decode->decoder->channels);

 audio->frames = decode->frame->nb_samples;

 if (audio->format == AUDIO_FORMAT_UNKNOWN)
  return 0;

 *got_output = 1;
 return 1;
}
