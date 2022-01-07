
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetEvent (int ) ;
 int death ;
 int * input_ctx ;
 int input_thread ;
 int pthread_join (int ,int *) ;
 int running ;

void terminal_uninit(void)
{
    if (running) {
        SetEvent(death);
        pthread_join(input_thread, ((void*)0));
        input_ctx = ((void*)0);
        running = 0;
    }
}
