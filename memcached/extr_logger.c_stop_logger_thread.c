
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_run_logger_thread ;
 int logger_tid ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static int stop_logger_thread(void) {
    do_run_logger_thread = 0;
    pthread_join(logger_tid, ((void*)0));
    return 0;
}
