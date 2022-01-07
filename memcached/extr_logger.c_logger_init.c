
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int logger_key ;
 scalar_t__ logger_stack_head ;
 scalar_t__ logger_stack_tail ;
 int pthread_key_create (int *,int *) ;
 scalar_t__ start_logger_thread () ;

void logger_init(void) {




    logger_stack_head = 0;
    logger_stack_tail = 0;
    pthread_key_create(&logger_key, ((void*)0));

    if (start_logger_thread() != 0) {
        abort();
    }




    return;
}
