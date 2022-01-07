
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ipc_ctx {int death_event; int thread; } ;


 int CloseHandle (int ) ;
 int SetEvent (int ) ;
 int pthread_join (int ,int *) ;
 int talloc_free (struct mp_ipc_ctx*) ;

void mp_uninit_ipc(struct mp_ipc_ctx *arg)
{
    if (!arg)
        return;

    SetEvent(arg->death_event);
    pthread_join(arg->thread, ((void*)0));

    CloseHandle(arg->death_event);
    talloc_free(arg);
}
