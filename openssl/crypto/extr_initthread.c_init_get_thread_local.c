
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THREAD_EVENT_HANDLER ;
typedef int CRYPTO_THREAD_LOCAL ;


 int ** CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int **) ;
 int OPENSSL_free (int **) ;
 int ** OPENSSL_zalloc (int) ;
 int init_thread_push_handlers (int **) ;

__attribute__((used)) static THREAD_EVENT_HANDLER **
init_get_thread_local(CRYPTO_THREAD_LOCAL *local, int alloc, int keep)
{
    THREAD_EVENT_HANDLER **hands = CRYPTO_THREAD_get_local(local);

    if (alloc) {
        if (hands == ((void*)0)) {

            if ((hands = OPENSSL_zalloc(sizeof(*hands))) == ((void*)0))
                return ((void*)0);

            if (!CRYPTO_THREAD_set_local(local, hands)) {
                OPENSSL_free(hands);
                return ((void*)0);
            }


            if (!init_thread_push_handlers(hands)) {
                CRYPTO_THREAD_set_local(local, ((void*)0));
                OPENSSL_free(hands);
                return ((void*)0);
            }

        }
    } else if (!keep) {
        CRYPTO_THREAD_set_local(local, ((void*)0));
    }

    return hands;
}
