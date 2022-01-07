
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
 int ** sk_THREAD_EVENT_HANDLER_PTR_delete (int ,int) ;
 int sk_THREAD_EVENT_HANDLER_PTR_num (int ) ;
 int ** sk_THREAD_EVENT_HANDLER_PTR_value (int ,int) ;

__attribute__((used)) static void init_thread_remove_handlers(THREAD_EVENT_HANDLER **handsin)
{
    GLOBAL_TEVENT_REGISTER *gtr;
    int i;

    gtr = get_global_tevent_register();
    if (gtr == ((void*)0))
        return;
    CRYPTO_THREAD_write_lock(gtr->lock);
    for (i = 0; i < sk_THREAD_EVENT_HANDLER_PTR_num(gtr->skhands); i++) {
        THREAD_EVENT_HANDLER **hands
            = sk_THREAD_EVENT_HANDLER_PTR_value(gtr->skhands, i);

        if (hands == handsin) {
            hands = sk_THREAD_EVENT_HANDLER_PTR_delete(gtr->skhands, i);
            CRYPTO_THREAD_unlock(gtr->lock);
            return;
        }
    }
    CRYPTO_THREAD_unlock(gtr->lock);
    return;
}
