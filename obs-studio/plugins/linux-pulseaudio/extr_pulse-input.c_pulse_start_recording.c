
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint32_t ;
struct pulse_data {scalar_t__ format; int device; int stream; int source; int speakers; int bytes_per_frame; int channels; int samples_per_sec; } ;
typedef int pa_stream_flags_t ;
struct TYPE_8__ {scalar_t__ format; int channels; int rate; } ;
typedef TYPE_1__ pa_sample_spec ;
typedef int pa_channel_map ;
struct TYPE_9__ {void* tlength; void* prebuf; void* minreq; void* maxlength; int fragsize; } ;
typedef TYPE_2__ pa_buffer_attr ;
typedef int int_fast32_t ;


 int LOG_ERROR ;
 int LOG_INFO ;
 scalar_t__ PA_SAMPLE_INVALID ;
 int PA_STREAM_ADJUST_LATENCY ;
 int blog (int ,char*,...) ;
 int obs_source_get_name (int ) ;
 int pa_frame_size (TYPE_1__*) ;
 int pa_sample_spec_valid (TYPE_1__*) ;
 int pa_stream_connect_record (int ,int ,TYPE_2__*,int ) ;
 int pa_stream_set_read_callback (int ,int ,void*) ;
 int pa_usec_to_bytes (int,TYPE_1__*) ;
 int pulse_channel_map (int ) ;
 int pulse_channels_to_obs_speakers (int ) ;
 scalar_t__ pulse_get_server_info (int ,void*) ;
 scalar_t__ pulse_get_source_info (int ,int ,void*) ;
 int pulse_lock () ;
 int pulse_server_info ;
 int pulse_source_info ;
 int pulse_stop_recording (struct pulse_data*) ;
 int pulse_stream_new (int ,TYPE_1__*,int *) ;
 int pulse_stream_read ;
 int pulse_unlock () ;

__attribute__((used)) static int_fast32_t pulse_start_recording(struct pulse_data *data)
{
 if (pulse_get_server_info(pulse_server_info, (void *)data) < 0) {
  blog(LOG_ERROR, "Unable to get server info !");
  return -1;
 }

 if (pulse_get_source_info(pulse_source_info, data->device,
      (void *)data) < 0) {
  blog(LOG_ERROR, "Unable to get source info !");
  return -1;
 }
 if (data->format == PA_SAMPLE_INVALID) {
  blog(LOG_ERROR,
       "An error occurred while getting the source info!");
  return -1;
 }

 pa_sample_spec spec;
 spec.format = data->format;
 spec.rate = data->samples_per_sec;
 spec.channels = data->channels;

 if (!pa_sample_spec_valid(&spec)) {
  blog(LOG_ERROR, "Sample spec is not valid");
  return -1;
 }

 data->speakers = pulse_channels_to_obs_speakers(spec.channels);
 data->bytes_per_frame = pa_frame_size(&spec);

 pa_channel_map channel_map = pulse_channel_map(data->speakers);

 data->stream = pulse_stream_new(obs_source_get_name(data->source),
     &spec, &channel_map);
 if (!data->stream) {
  blog(LOG_ERROR, "Unable to create stream");
  return -1;
 }

 pulse_lock();
 pa_stream_set_read_callback(data->stream, pulse_stream_read,
        (void *)data);
 pulse_unlock();

 pa_buffer_attr attr;
 attr.fragsize = pa_usec_to_bytes(25000, &spec);
 attr.maxlength = (uint32_t)-1;
 attr.minreq = (uint32_t)-1;
 attr.prebuf = (uint32_t)-1;
 attr.tlength = (uint32_t)-1;

 pa_stream_flags_t flags = PA_STREAM_ADJUST_LATENCY;

 pulse_lock();
 int_fast32_t ret = pa_stream_connect_record(data->stream, data->device,
          &attr, flags);
 pulse_unlock();
 if (ret < 0) {
  pulse_stop_recording(data);
  blog(LOG_ERROR, "Unable to connect to stream");
  return -1;
 }

 blog(LOG_INFO, "Started recording from '%s'", data->device);
 return 0;
}
