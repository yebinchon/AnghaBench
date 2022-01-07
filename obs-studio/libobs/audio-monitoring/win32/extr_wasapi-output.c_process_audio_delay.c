
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef float uint32_t ;
typedef int ts ;
struct TYPE_8__ {float* array; } ;
struct TYPE_9__ {scalar_t__ size; } ;
struct audio_monitor {int channels; int last_recv_time; int prev_video_ts; int time_since_prev; TYPE_2__ buf; TYPE_3__ delay_buffer; scalar_t__ sample_rate; TYPE_1__* source; } ;
struct TYPE_7__ {int last_frame_ts; scalar_t__ sync_offset; } ;
typedef TYPE_1__ obs_source_t ;
typedef int int64_t ;


 int LOG_INFO ;
 int blog (int ,char*,int,int,int,int) ;
 int circlebuf_free (TYPE_3__*) ;
 int circlebuf_peek_front (TYPE_3__*,int*,int) ;
 int circlebuf_pop_front (TYPE_3__*,float*,size_t) ;
 int circlebuf_push_back (TYPE_3__*,...) ;
 int da_resize (TYPE_2__,size_t) ;
 int llabs (int) ;
 int os_gettime_ns () ;

__attribute__((used)) static bool process_audio_delay(struct audio_monitor *monitor, float **data,
    uint32_t *frames, uint64_t ts, uint32_t pad)
{
 obs_source_t *s = monitor->source;
 uint64_t last_frame_ts = s->last_frame_ts;
 uint64_t cur_time = os_gettime_ns();
 uint64_t front_ts;
 uint64_t cur_ts;
 int64_t diff;
 uint32_t blocksize = monitor->channels * sizeof(float);


 if (cur_time - monitor->last_recv_time > 1000000000)
  circlebuf_free(&monitor->delay_buffer);
 monitor->last_recv_time = cur_time;

 ts += monitor->source->sync_offset;

 circlebuf_push_back(&monitor->delay_buffer, &ts, sizeof(ts));
 circlebuf_push_back(&monitor->delay_buffer, frames, sizeof(*frames));
 circlebuf_push_back(&monitor->delay_buffer, *data, *frames * blocksize);

 if (!monitor->prev_video_ts) {
  monitor->prev_video_ts = last_frame_ts;

 } else if (monitor->prev_video_ts == last_frame_ts) {
  monitor->time_since_prev += (uint64_t)*frames * 1000000000ULL /
         (uint64_t)monitor->sample_rate;
 } else {
  monitor->time_since_prev = 0;
 }

 while (monitor->delay_buffer.size != 0) {
  size_t size;
  bool bad_diff;

  circlebuf_peek_front(&monitor->delay_buffer, &cur_ts,
         sizeof(ts));
  front_ts = cur_ts - ((uint64_t)pad * 1000000000ULL /
         (uint64_t)monitor->sample_rate);
  diff = (int64_t)front_ts - (int64_t)last_frame_ts;
  bad_diff = !last_frame_ts || llabs(diff) > 5000000000 ||
      monitor->time_since_prev > 100000000ULL;


  if (!bad_diff && diff > 75000000) {
   return 0;
  }

  circlebuf_pop_front(&monitor->delay_buffer, ((void*)0), sizeof(ts));
  circlebuf_pop_front(&monitor->delay_buffer, frames,
        sizeof(*frames));

  size = *frames * blocksize;
  da_resize(monitor->buf, size);
  circlebuf_pop_front(&monitor->delay_buffer, monitor->buf.array,
        size);


  if (!bad_diff && diff < -75000000 &&
      monitor->delay_buffer.size > 0) {
   continue;
  }

  *data = monitor->buf.array;
  return 1;
 }

 return 0;
}
