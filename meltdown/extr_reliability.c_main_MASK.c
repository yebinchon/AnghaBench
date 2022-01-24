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
struct TYPE_4__ {int retries; int measurements; size_t physical_offset; } ;
typedef  TYPE_1__ libkdump_config_t ;

/* Variables and functions */
 size_t DEFAULT_PHYSICAL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 size_t FUNC6 (size_t) ; 
 int FUNC7 (size_t) ; 
 size_t FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(int argc, char *argv[]) {
  size_t scratch[4096];
  libkdump_config_t config;
  size_t offset = DEFAULT_PHYSICAL_OFFSET;
  int progress = 0;
  unsigned char secret = 'X';

  if(argc == 2) {
    offset = FUNC12(argv[1], NULL, 0);
    FUNC9("\x1b[33;1m[+]\x1b[0m Setting physical offset to 0x%zx\n", offset);
  }
  
  FUNC3(0);

  config = FUNC4();
  config.retries = 10;
  config.measurements = 2;
  config.physical_offset = offset;

  FUNC5(config);

  size_t var = (size_t)(scratch + 2048);
  *(char*)var = secret;

  size_t start = FUNC8(var);
  if (!start) {
    FUNC9("\x1b[31;1m[!]\x1b[0m Program requires root privileges (or read access to /proc/<pid>/pagemap)!\n");
    FUNC0(1);
  }
  
  FUNC11(FUNC13(NULL));

  size_t correct = 0, wrong = 0, failcounter = 0;
  size_t phys = FUNC6(start);
  while (1) {
    *(volatile unsigned char*)var = secret;

    int res = FUNC7(phys);
    if (res == secret) {
      correct++;
    } else if(res != 0) {
      wrong++;
    } else {
      failcounter++;
      if(failcounter < 1000) {
        continue;
      } else {
        failcounter = 0;
        wrong++;
      }
    }
    FUNC9("\r\x1b[34;1m[%c]\x1b[0m Success rate: %.2f%% (read %zd values)    ", "/-\\|"[(progress++ / 100) % 4], (100.f * (double)correct) / (double)(correct + wrong), correct + wrong);
    FUNC1(stdout);
    secret = (FUNC10() % 255) + 1;
  }

  FUNC2();

  return 0;
}