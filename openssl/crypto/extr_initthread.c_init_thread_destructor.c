
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THREAD_EVENT_HANDLER ;


 int OPENSSL_free (void*) ;
 int init_thread_remove_handlers (void*) ;
 int init_thread_stop (int *,int **) ;

__attribute__((used)) static void init_thread_destructor(void *hands)
{
    init_thread_stop(((void*)0), (THREAD_EVENT_HANDLER **)hands);
    init_thread_remove_handlers(hands);
    OPENSSL_free(hands);
}
