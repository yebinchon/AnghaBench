
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int starting_time ;

__attribute__((used)) static inline bool whitelist_time(uint64_t ts, uint64_t interval,
      uint64_t fps_num, uint64_t fps_den)
{
 if (!starting_time)
  return 0;

 uint64_t count = (ts - starting_time) / interval;
 uint64_t sec = count * fps_den / fps_num;
 return sec % 2 == 1;
}
