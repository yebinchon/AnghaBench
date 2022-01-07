
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int os_gettime_ns () ;

__attribute__((used)) static inline bool frame_ready(uint64_t interval)
{
 static uint64_t last_time = 0;
 uint64_t elapsed;
 uint64_t t;

 if (!interval) {
  return 1;
 }

 t = os_gettime_ns();
 elapsed = t - last_time;

 if (elapsed < interval) {
  return 0;
 }

 last_time = (elapsed > interval * 2) ? t : last_time + interval;
 return 1;
}
