
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sane; int value; } ;
typedef int THREAD_EVENT_HANDLER ;


 TYPE_1__ destructor_key ;
 int ** init_get_thread_local (int *,int ,int) ;
 int init_thread_stop (void*,int **) ;

void ossl_ctx_thread_stop(void *arg)
{
    if (destructor_key.sane != -1) {
        THREAD_EVENT_HANDLER **hands
            = init_get_thread_local(&destructor_key.value, 0, 1);
        init_thread_stop(arg, hands);
    }
}
