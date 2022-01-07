
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int skhands; } ;
typedef int THREAD_EVENT_HANDLER ;
typedef TYPE_1__ GLOBAL_TEVENT_REGISTER ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 TYPE_1__* get_global_tevent_register () ;
 scalar_t__ sk_THREAD_EVENT_HANDLER_PTR_push (int ,int **) ;

__attribute__((used)) static int init_thread_push_handlers(THREAD_EVENT_HANDLER **hands)
{
    int ret;
    GLOBAL_TEVENT_REGISTER *gtr;

    gtr = get_global_tevent_register();
    if (gtr == ((void*)0))
        return 0;

    CRYPTO_THREAD_write_lock(gtr->lock);
    ret = (sk_THREAD_EVENT_HANDLER_PTR_push(gtr->skhands, hands) != 0);
    CRYPTO_THREAD_unlock(gtr->lock);

    return ret;
}
