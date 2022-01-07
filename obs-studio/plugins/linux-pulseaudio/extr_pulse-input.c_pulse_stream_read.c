
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct obs_source_audio {size_t frames; scalar_t__ timestamp; int samples_per_sec; int ** data; int format; int speakers; } ;
typedef int pa_stream ;
struct TYPE_2__ {size_t bytes_per_frame; scalar_t__ first_ts; int stream; int frames; int packets; int source; int format; int samples_per_sec; int speakers; } ;


 int LOG_ERROR ;
 int PULSE_DATA (void*) ;
 scalar_t__ STARTUP_TIMEOUT_NS ;
 int UNUSED_PARAMETER (size_t) ;
 int blog (int ,char*,unsigned int) ;
 TYPE_1__* data ;
 scalar_t__ get_sample_time (size_t,int ) ;
 int obs_source_output_audio (int ,struct obs_source_audio*) ;
 int pa_stream_drop (int ) ;
 int pa_stream_peek (int ,void const**,size_t*) ;
 int pulse_signal (int ) ;
 int pulse_to_obs_audio_format (int ) ;

__attribute__((used)) static void pulse_stream_read(pa_stream *p, size_t nbytes, void *userdata)
{
 UNUSED_PARAMETER(p);
 UNUSED_PARAMETER(nbytes);
 PULSE_DATA(userdata);

 const void *frames;
 size_t bytes;

 if (!data->stream)
  goto exit;

 pa_stream_peek(data->stream, &frames, &bytes);


 if (!bytes)
  goto exit;

 if (!frames) {
  blog(LOG_ERROR, "Got audio hole of %u bytes",
       (unsigned int)bytes);
  pa_stream_drop(data->stream);
  goto exit;
 }

 struct obs_source_audio out;
 out.speakers = data->speakers;
 out.samples_per_sec = data->samples_per_sec;
 out.format = pulse_to_obs_audio_format(data->format);
 out.data[0] = (uint8_t *)frames;
 out.frames = bytes / data->bytes_per_frame;
 out.timestamp = get_sample_time(out.frames, out.samples_per_sec);

 if (!data->first_ts)
  data->first_ts = out.timestamp + STARTUP_TIMEOUT_NS;

 if (out.timestamp > data->first_ts)
  obs_source_output_audio(data->source, &out);

 data->packets++;
 data->frames += out.frames;

 pa_stream_drop(data->stream);
exit:
 pulse_signal(0);
}
