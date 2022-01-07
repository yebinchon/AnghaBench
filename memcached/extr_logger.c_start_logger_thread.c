
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_run_logger_thread ;
 int fprintf (int ,char*,char*) ;
 int logger_thread ;
 int logger_tid ;
 int pthread_create (int *,int *,int ,int *) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int start_logger_thread(void) {
    int ret;
    do_run_logger_thread = 1;
    if ((ret = pthread_create(&logger_tid, ((void*)0),
                              logger_thread, ((void*)0))) != 0) {
        fprintf(stderr, "Can't start logger thread: %s\n", strerror(ret));
        return -1;
    }
    return 0;
}
