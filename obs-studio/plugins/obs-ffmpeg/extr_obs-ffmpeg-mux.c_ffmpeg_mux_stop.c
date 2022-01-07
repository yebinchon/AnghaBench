
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ffmpeg_muxer {long long stop_ts; int capturing; int stopping; } ;
typedef long long int64_t ;


 scalar_t__ capturing (struct ffmpeg_muxer*) ;
 int os_atomic_set_bool (int *,int) ;

__attribute__((used)) static void ffmpeg_mux_stop(void *data, uint64_t ts)
{
 struct ffmpeg_muxer *stream = data;

 if (capturing(stream) || ts == 0) {
  stream->stop_ts = (int64_t)ts / 1000LL;
  os_atomic_set_bool(&stream->stopping, 1);
  os_atomic_set_bool(&stream->capturing, 0);
 }
}
