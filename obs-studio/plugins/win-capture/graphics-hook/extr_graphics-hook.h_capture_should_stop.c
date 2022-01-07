
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ capture_active () ;
 int capture_alive () ;
 scalar_t__ capture_stopped () ;
 int os_gettime_ns () ;

__attribute__((used)) static inline bool capture_should_stop(void)
{
 bool stop_requested = 0;

 if (capture_active()) {
  static uint64_t last_keepalive_check = 0;
  uint64_t cur_time = os_gettime_ns();
  bool alive = 1;

  if (cur_time - last_keepalive_check > 5000000000) {
   alive = capture_alive();
   last_keepalive_check = cur_time;
  }

  stop_requested = capture_stopped() || !alive;
 }

 return stop_requested;
}
