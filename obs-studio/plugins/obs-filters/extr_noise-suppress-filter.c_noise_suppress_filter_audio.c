
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ng_audio_info {int frames; scalar_t__ timestamp; } ;
typedef struct ng_audio_info uint8_t ;
struct obs_audio_data {int frames; scalar_t__ timestamp; struct ng_audio_info** data; } ;
struct TYPE_5__ {int * array; } ;
struct TYPE_6__ {size_t size; } ;
struct noise_suppress_data {int frames; size_t channels; struct obs_audio_data output_audio; TYPE_2__* output_buffers; TYPE_1__ output_data; TYPE_2__ info_buffer; TYPE_2__* input_buffers; scalar_t__ last_timestamp; int * states; } ;
typedef long long int64_t ;
typedef int info ;


 int circlebuf_peek_front (TYPE_2__*,struct ng_audio_info*,int) ;
 int circlebuf_pop_front (TYPE_2__*,struct ng_audio_info*,size_t) ;
 int circlebuf_push_back (TYPE_2__*,struct ng_audio_info*,int) ;
 int da_resize (TYPE_1__,size_t) ;
 long long llabs (long long) ;
 int memset (struct ng_audio_info*,int ,int) ;
 int process (struct noise_suppress_data*) ;
 int reset_data (struct noise_suppress_data*) ;

__attribute__((used)) static struct obs_audio_data *
noise_suppress_filter_audio(void *data, struct obs_audio_data *audio)
{
 struct noise_suppress_data *ng = data;
 struct ng_audio_info info;
 size_t segment_size = ng->frames * sizeof(float);
 size_t out_size;

 if (!ng->states[0])
  return audio;





 if (ng->last_timestamp) {
  int64_t diff = llabs((int64_t)ng->last_timestamp -
         (int64_t)audio->timestamp);

  if (diff > 1000000000LL)
   reset_data(ng);
 }

 ng->last_timestamp = audio->timestamp;



 info.frames = audio->frames;
 info.timestamp = audio->timestamp;
 circlebuf_push_back(&ng->info_buffer, &info, sizeof(info));



 for (size_t i = 0; i < ng->channels; i++)
  circlebuf_push_back(&ng->input_buffers[i], audio->data[i],
        audio->frames * sizeof(float));



 while (ng->input_buffers[0].size >= segment_size)
  process(ng);




 memset(&info, 0, sizeof(info));
 circlebuf_peek_front(&ng->info_buffer, &info, sizeof(info));
 out_size = info.frames * sizeof(float);

 if (ng->output_buffers[0].size < out_size)
  return ((void*)0);




 circlebuf_pop_front(&ng->info_buffer, ((void*)0), sizeof(info));
 da_resize(ng->output_data, out_size * ng->channels);

 for (size_t i = 0; i < ng->channels; i++) {
  ng->output_audio.data[i] =
   (uint8_t *)&ng->output_data.array[i * out_size];

  circlebuf_pop_front(&ng->output_buffers[i],
        ng->output_audio.data[i], out_size);
 }

 ng->output_audio.frames = info.frames;
 ng->output_audio.timestamp = info.timestamp;
 return &ng->output_audio;
}
