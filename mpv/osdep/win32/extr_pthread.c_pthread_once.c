
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_once_t ;
typedef scalar_t__ BOOL ;


 int InitOnceBeginInitialize (int *,int ,scalar_t__*,int *) ;
 int InitOnceComplete (int *,int ,int *) ;
 int abort () ;

int pthread_once(pthread_once_t *once_control, void (*init_routine)(void))
{
    BOOL pending;
    if (!InitOnceBeginInitialize(once_control, 0, &pending, ((void*)0)))
        abort();
    if (pending) {
        init_routine();
        InitOnceComplete(once_control, 0, ((void*)0));
    }
    return 0;
}
