
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ffmpeg_data {int audio_tracks; size_t audio_size; size_t audio_planes; int ** samples; TYPE_2__** excess_frames; scalar_t__ frame_size; int start_timestamp; TYPE_1__** audio_streams; } ;
struct ffmpeg_output {scalar_t__ audio_start_ts; struct ffmpeg_data ff_data; } ;
struct audio_data {int frames; int * data; scalar_t__ timestamp; } ;
struct TYPE_5__ {size_t size; } ;
struct TYPE_4__ {int * codec; } ;
typedef int AVCodecContext ;


 int circlebuf_pop_front (TYPE_2__*,int ,size_t) ;
 int circlebuf_push_back (TYPE_2__*,int ,int) ;
 int encode_audio (struct ffmpeg_output*,int,int *,int) ;
 int get_track_order (int,size_t) ;

__attribute__((used)) static void receive_audio(void *param, size_t mix_idx, struct audio_data *frame)
{
 struct ffmpeg_output *output = param;
 struct ffmpeg_data *data = &output->ff_data;
 size_t frame_size_bytes;
 struct audio_data in = *frame;
 int track_order;


 if (!data->audio_streams)
  return;


 if ((data->audio_tracks & (1 << mix_idx)) == 0)
  return;


 track_order = get_track_order(data->audio_tracks, mix_idx);

 AVCodecContext *context = data->audio_streams[track_order]->codec;

 if (!data->start_timestamp)
  return;

 if (!output->audio_start_ts)
  output->audio_start_ts = in.timestamp;

 frame_size_bytes = (size_t)data->frame_size * data->audio_size;

 for (size_t i = 0; i < data->audio_planes; i++)
  circlebuf_push_back(&data->excess_frames[track_order][i],
        in.data[i], in.frames * data->audio_size);

 while (data->excess_frames[track_order][0].size >= frame_size_bytes) {
  for (size_t i = 0; i < data->audio_planes; i++)
   circlebuf_pop_front(
    &data->excess_frames[track_order][i],
    data->samples[track_order][i],
    frame_size_bytes);

  encode_audio(output, track_order, context, data->audio_size);
 }
}
