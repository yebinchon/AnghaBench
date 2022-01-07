
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int (* handler ) () ;} ;
typedef TYPE_1__ OPENSSL_INIT_STOP ;


 int CRYPTO_THREAD_lock_free (int *) ;
 int CRYPTO_secure_malloc_done () ;
 int INIT ;
 int OPENSSL_free (TYPE_1__*) ;
 int OPENSSL_thread_stop () ;
 int OSSL_CMP_log_close () ;
 int OSSL_TRACE (int ,char*) ;
 int async_deinit () ;
 scalar_t__ async_inited ;
 scalar_t__ base_inited ;
 int bio_cleanup () ;
 int comp_zlib_cleanup_int () ;
 int conf_modules_free_int () ;
 int engine_cleanup_int () ;
 int err_cleanup () ;
 int err_free_strings_int () ;
 int evp_cleanup_int () ;
 int * init_lock ;
 scalar_t__ load_crypto_strings_inited ;
 int obj_cleanup_int () ;
 int openssl_ctx_default_deinit () ;
 int ossl_cleanup_thread () ;
 int ossl_store_cleanup_int () ;
 int ossl_trace_cleanup () ;
 int rand_cleanup_int () ;
 TYPE_1__* stop_handlers ;
 int stopped ;
 int stub1 () ;
 scalar_t__ zlib_inited ;

void OPENSSL_cleanup(void)
{
    OPENSSL_INIT_STOP *currhandler, *lasthandler;







    if (!base_inited)
        return;


    if (stopped)
        return;
    stopped = 1;





    OPENSSL_thread_stop();

    currhandler = stop_handlers;
    while (currhandler != ((void*)0)) {
        currhandler->handler();
        lasthandler = currhandler;
        currhandler = currhandler->next;
        OPENSSL_free(lasthandler);
    }
    stop_handlers = ((void*)0);

    CRYPTO_THREAD_lock_free(init_lock);
    init_lock = ((void*)0);







    if (zlib_inited) {
        OSSL_TRACE(INIT, "OPENSSL_cleanup: comp_zlib_cleanup_int()\n");
        comp_zlib_cleanup_int();
    }


    if (async_inited) {
        OSSL_TRACE(INIT, "OPENSSL_cleanup: async_deinit()\n");
        async_deinit();
    }

    if (load_crypto_strings_inited) {
        OSSL_TRACE(INIT, "OPENSSL_cleanup: err_free_strings_int()\n");
        err_free_strings_int();
    }
    OSSL_TRACE(INIT, "OPENSSL_cleanup: rand_cleanup_int()\n");
    rand_cleanup_int();

    OSSL_TRACE(INIT, "OPENSSL_cleanup: conf_modules_free_int()\n");
    conf_modules_free_int();


    OSSL_TRACE(INIT, "OPENSSL_cleanup: engine_cleanup_int()\n");
    engine_cleanup_int();

    OSSL_TRACE(INIT, "OPENSSL_cleanup: ossl_store_cleanup_int()\n");
    ossl_store_cleanup_int();

    OSSL_TRACE(INIT, "OPENSSL_cleanup: openssl_ctx_default_deinit()\n");
    openssl_ctx_default_deinit();

    ossl_cleanup_thread();

    OSSL_TRACE(INIT, "OPENSSL_cleanup: bio_cleanup()\n");
    bio_cleanup();

    OSSL_TRACE(INIT, "OPENSSL_cleanup: evp_cleanup_int()\n");
    evp_cleanup_int();

    OSSL_TRACE(INIT, "OPENSSL_cleanup: obj_cleanup_int()\n");
    obj_cleanup_int();

    OSSL_TRACE(INIT, "OPENSSL_cleanup: err_int()\n");
    err_cleanup();

    OSSL_TRACE(INIT, "OPENSSL_cleanup: CRYPTO_secure_malloc_done()\n");
    CRYPTO_secure_malloc_done();


    OSSL_TRACE(INIT, "OPENSSL_cleanup: OSSL_CMP_log_close()\n");
    OSSL_CMP_log_close();


    OSSL_TRACE(INIT, "OPENSSL_cleanup: ossl_trace_cleanup()\n");
    ossl_trace_cleanup();

    base_inited = 0;
}
