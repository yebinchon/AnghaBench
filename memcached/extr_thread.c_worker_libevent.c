
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ drop_privileges; } ;
struct TYPE_3__ {int base; int * lru_bump_buf; int * l; } ;
typedef TYPE_1__ LIBEVENT_THREAD ;


 int abort () ;
 int drop_worker_privileges () ;
 int event_base_free (int ) ;
 int event_base_loop (int ,int ) ;
 int * item_lru_bump_buf_create () ;
 int * logger_create () ;
 int register_thread_initialized () ;
 TYPE_2__ settings ;

__attribute__((used)) static void *worker_libevent(void *arg) {
    LIBEVENT_THREAD *me = arg;




    me->l = logger_create();
    me->lru_bump_buf = item_lru_bump_buf_create();
    if (me->l == ((void*)0) || me->lru_bump_buf == ((void*)0)) {
        abort();
    }

    if (settings.drop_privileges) {
        drop_worker_privileges();
    }

    register_thread_initialized();

    event_base_loop(me->base, 0);


    register_thread_initialized();

    event_base_free(me->base);
    return ((void*)0);
}
