
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;


 int THREAD_COUNT ;
 int client ;
 int nn_thread_init (struct nn_thread*,int ,void*) ;
 int nn_thread_term (struct nn_thread*) ;
 int server ;

int main()
{
    int i;
    struct nn_thread srv_thread;
    struct nn_thread cli_threads[THREAD_COUNT];

    nn_thread_init(&srv_thread, server, ((void*)0));

    for (i = 0; i != THREAD_COUNT; ++i)
        nn_thread_init(&cli_threads[i], client, (void *)(intptr_t)i);
    for (i = 0; i != THREAD_COUNT; ++i)
        nn_thread_term(&cli_threads[i]);

    return 0;
}
