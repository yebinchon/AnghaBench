
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pause_data {scalar_t__ ts_start; scalar_t__ ts_end; int ts_offset; } ;



__attribute__((used)) static inline void end_pause(struct pause_data *pause, uint64_t ts)
{
 if (!pause->ts_end) {
  pause->ts_end = ts;
  pause->ts_offset += pause->ts_end - pause->ts_start;
 }
}
