
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_5__ {int load_threads; int load_type; scalar_t__ fault_handling; } ;
typedef TYPE_1__ libkdump_config_t ;


 int ENOMEM ;
 int ERROR ;


 scalar_t__ SIGNAL_HANDLER ;
 int SIGSEGV ;
 scalar_t__ SIG_ERR ;
 int SUCCESS ;

 int * _mem ;
 int auto_config () ;
 int check_config () ;
 TYPE_1__ config ;
 int debug (int ,char*,...) ;
 int errno ;
 int flush (char*) ;
 int free (int *) ;
 int libkdump_auto_config ;
 int libkdump_cleanup () ;
 int * load_thread ;
 int * malloc (int) ;
 char* mem ;
 scalar_t__ memcmp (TYPE_1__*,int *,int) ;
 int memset (char*,int,int) ;
 void* nopthread ;
 int pthread_cancel (int ) ;
 int pthread_create (int *,int ,void*,int ) ;
 int segfault_handler ;
 scalar_t__ signal (int ,int ) ;
 void* syncthread ;
 void* yieldthread ;

int libkdump_init(const libkdump_config_t configuration) {
  int j;
  config = configuration;
  if (memcmp(&config, &libkdump_auto_config, sizeof(libkdump_config_t)) == 0) {
    auto_config();
  }

  int err = check_config();
  if (err != 0) {
    errno = err;
    return -1;
  }
  _mem = malloc(4096 * 300);
  if (!_mem) {
    errno = ENOMEM;
    return -1;
  }
  mem = (char *)(((size_t)_mem & ~0xfff) + 0x1000 * 2);
  memset(mem, 0xab, 4096 * 290);

  for (j = 0; j < 256; j++) {
    flush(mem + j * 4096);
  }

  load_thread = malloc(sizeof(pthread_t) * config.load_threads);
  void *thread_func;
  switch (config.load_type) {
  case 130:
    thread_func = syncthread;
    break;
  case 128:
    thread_func = yieldthread;
    break;
  case 129:
  default:
    thread_func = nopthread;
  }

  for (j = 0; j < config.load_threads; j++) {
    int r = pthread_create(&load_thread[j], 0, thread_func, 0);
    if (r != 0) {
      int k;
      for (k = 0; k < j; k++) {
        pthread_cancel(load_thread[k]);
      }
      free(load_thread);
      free(_mem);
      errno = r;
      return -1;
    }
  }
  debug(SUCCESS, "Started %d load threads\n", config.load_threads);

  if (config.fault_handling == SIGNAL_HANDLER) {
    if (signal(SIGSEGV, segfault_handler) == SIG_ERR) {
      debug(ERROR, "Failed to setup signal handler\n");
      libkdump_cleanup();
      return -1;
    }
    debug(SUCCESS, "Successfully setup signal handler\n");
  }
  return 0;
}
