
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pause_data {scalar_t__ ts_start; scalar_t__ ts_end; scalar_t__ last_video_ts; } ;



__attribute__((used)) static inline bool video_pause_check_internal(struct pause_data *pause,
           uint64_t ts)
{
 pause->last_video_ts = ts;
 if (!pause->ts_start) {
  return 0;
 }

 if (ts == pause->ts_end) {
  pause->ts_start = 0;
  pause->ts_end = 0;

 } else if (ts >= pause->ts_start) {
  return 1;
 }

 return 0;
}
