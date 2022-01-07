
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



bool is_first_run(void) {
  static uint8_t run = 0;

  if (run == 0) {
    run++;
    return 1;
  } else {
    return 0;
  }
}
