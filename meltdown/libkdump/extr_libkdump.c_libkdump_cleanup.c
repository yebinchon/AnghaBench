
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fault_handling; int load_threads; } ;


 scalar_t__ SIGNAL_HANDLER ;
 int SIGSEGV ;
 int SIG_DFL ;
 int SUCCESS ;
 int * _mem ;
 TYPE_1__ config ;
 int debug (int ,char*) ;
 int free (int *) ;
 int * load_thread ;
 int pthread_cancel (int ) ;
 int signal (int ,int ) ;

int libkdump_cleanup() {
  int j;
  if (config.fault_handling == SIGNAL_HANDLER) {
    signal(SIGSEGV, SIG_DFL);
  }

  for (j = 0; j < config.load_threads; j++) {
    pthread_cancel(load_thread[j]);
  }
  free(load_thread);
  free(_mem);
  debug(SUCCESS, "Everything is cleaned up, good bye!\n");
  return 0;
}
