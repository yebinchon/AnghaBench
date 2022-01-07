
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_5__ {struct TYPE_5__* next; void const* index; void* arg; int handfn; } ;
typedef TYPE_1__ THREAD_EVENT_HANDLER ;
typedef int OSSL_thread_stop_handler_fn ;
typedef int OPENSSL_CTX ;
typedef int CRYPTO_THREAD_LOCAL ;


 int FIPS_get_provider (int *) ;
 int OPENSSL_CTX_THREAD_EVENT_HANDLER_INDEX ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int c_thread_start (int ,int ) ;
 TYPE_3__ destructor_key ;
 TYPE_1__** init_get_thread_local (int *,int,int ) ;
 int * openssl_ctx_get_data (int *,int ,int *) ;
 int ossl_ctx_thread_stop ;
 int thread_event_ossl_ctx_method ;

int ossl_init_thread_start(const void *index, void *arg,
                           OSSL_thread_stop_handler_fn handfn)
{
    THREAD_EVENT_HANDLER **hands;
    THREAD_EVENT_HANDLER *hand;
    CRYPTO_THREAD_LOCAL *local = &destructor_key.value;


    hands = init_get_thread_local(local, 1, 0);
    if (hands == ((void*)0))
        return 0;
    hand = OPENSSL_malloc(sizeof(*hand));
    if (hand == ((void*)0))
        return 0;

    hand->handfn = handfn;
    hand->arg = arg;
    hand->index = index;
    hand->next = *hands;
    *hands = hand;

    return 1;
}
