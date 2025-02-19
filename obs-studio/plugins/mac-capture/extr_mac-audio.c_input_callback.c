
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct obs_source_audio {size_t frames; int timestamp; int samples_per_sec; int format; int speakers; int * data; } ;
struct coreaudio_data {int source; int sample_rate; int format; int speakers; TYPE_5__* buf_list; int unit; } ;
typedef size_t UInt32 ;
struct TYPE_8__ {size_t mNumberBuffers; TYPE_1__* mBuffers; } ;
struct TYPE_7__ {int mHostTime; } ;
struct TYPE_6__ {int mData; } ;
typedef int OSStatus ;
typedef int AudioUnitRenderActionFlags ;
typedef TYPE_2__ AudioTimeStamp ;
typedef int AudioBufferList ;


 int AudioUnitRender (int ,int *,TYPE_2__ const*,size_t,size_t,TYPE_5__*) ;
 int UNUSED_PARAMETER (int *) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;
 int noErr ;
 int obs_source_output_audio (int ,struct obs_source_audio*) ;

__attribute__((used)) static OSStatus input_callback(void *data,
          AudioUnitRenderActionFlags *action_flags,
          const AudioTimeStamp *ts_data, UInt32 bus_num,
          UInt32 frames, AudioBufferList *ignored_buffers)
{
 struct coreaudio_data *ca = data;
 OSStatus stat;
 struct obs_source_audio audio;

 stat = AudioUnitRender(ca->unit, action_flags, ts_data, bus_num, frames,
          ca->buf_list);
 if (!ca_success(stat, ca, "input_callback", "audio retrieval"))
  return noErr;

 for (UInt32 i = 0; i < ca->buf_list->mNumberBuffers; i++)
  audio.data[i] = ca->buf_list->mBuffers[i].mData;

 audio.frames = frames;
 audio.speakers = ca->speakers;
 audio.format = ca->format;
 audio.samples_per_sec = ca->sample_rate;
 audio.timestamp = ts_data->mHostTime;

 obs_source_output_audio(ca->source, &audio);

 UNUSED_PARAMETER(ignored_buffers);
 return noErr;
}
