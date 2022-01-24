#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_5__ {int load_threads; int load_type; scalar_t__ fault_handling; } ;
typedef  TYPE_1__ libkdump_config_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
#define  IO 130 
#define  NOP 129 
 scalar_t__ SIGNAL_HANDLER ; 
 int /*<<< orphan*/  SIGSEGV ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SUCCESS ; 
#define  YIELD 128 
 int /*<<< orphan*/ * _mem ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  libkdump_auto_config ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * load_thread ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 char* mem ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 void* nopthread ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  segfault_handler ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* syncthread ; 
 void* yieldthread ; 

int FUNC12(const libkdump_config_t configuration) {
  int j;
  config = configuration;
  if (FUNC7(&config, &libkdump_auto_config, sizeof(libkdump_config_t)) == 0) {
    FUNC0();
  }

  int err = FUNC1();
  if (err != 0) {
    errno = err;
    return -1;
  }
  _mem = FUNC6(4096 * 300);
  if (!_mem) {
    errno = ENOMEM;
    return -1;
  }
  mem = (char *)(((size_t)_mem & ~0xfff) + 0x1000 * 2);
  FUNC8(mem, 0xab, 4096 * 290);

  for (j = 0; j < 256; j++) {
    FUNC3(mem + j * 4096);
  }

  load_thread = FUNC6(sizeof(pthread_t) * config.load_threads);
  void *thread_func;
  switch (config.load_type) {
  case IO:
    thread_func = syncthread;
    break;
  case YIELD:
    thread_func = yieldthread;
    break;
  case NOP:
  default:
    thread_func = nopthread;
  }

  for (j = 0; j < config.load_threads; j++) {
    int r = FUNC10(&load_thread[j], 0, thread_func, 0);
    if (r != 0) {
      int k;
      for (k = 0; k < j; k++) {
        FUNC9(load_thread[k]);
      }
      FUNC4(load_thread);
      FUNC4(_mem);
      errno = r;
      return -1;
    }
  }
  FUNC2(SUCCESS, "Started %d load threads\n", config.load_threads);

  if (config.fault_handling == SIGNAL_HANDLER) {
    if (FUNC11(SIGSEGV, segfault_handler) == SIG_ERR) {
      FUNC2(ERROR, "Failed to setup signal handler\n");
      FUNC5();
      return -1;
    }
    FUNC2(SUCCESS, "Successfully setup signal handler\n");
  }
  return 0;
}