
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flush_reload (scalar_t__) ;
 scalar_t__ mem ;
 int sched_yield () ;

__attribute__((used)) static int __attribute__((always_inline)) read_value() {
  int i, hit = 0;
  for (i = 0; i < 256; i++) {
    if (flush_reload(mem + i * 4096)) {
      hit = i + 1;
    }
    sched_yield();
  }
  return hit - 1;
}
