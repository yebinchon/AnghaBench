
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int (* print_cb ) (char const*,size_t,void*) ;scalar_t__ chunks; scalar_t__ bytes; void* print_cb_arg; } ;
typedef TYPE_1__ MEM_LEAK ;


 int BIO_snprintf (char*,int,char*,scalar_t__,scalar_t__) ;
 int CRYPTO_MEM_CHECK_DISABLE ;
 int CRYPTO_MEM_CHECK_OFF ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int CRYPTO_THREAD_unlock (int *) ;
 int CRYPTO_THREAD_write_lock (int *) ;
 int CRYPTO_mem_ctrl (int) ;
 int OPENSSL_cleanup () ;
 int RUN_ONCE (int *,int ) ;
 int do_memdbg_init ;
 int lh_MEM_doall_MEM_LEAK (int *,int ,TYPE_1__*) ;
 int lh_MEM_free (int *) ;
 int * long_memdbg_lock ;
 int memdbg_init ;
 int * memdbg_lock ;
 int * mh ;
 int mh_mode ;
 int print_leak ;
 size_t strlen (char*) ;

int CRYPTO_mem_leaks_cb(int (*cb) (const char *str, size_t len, void *u),
                        void *u)
{
    MEM_LEAK ml;


    OPENSSL_cleanup();

    if (!RUN_ONCE(&memdbg_init, do_memdbg_init))
        return -1;

    CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_DISABLE);

    ml.print_cb = cb;
    ml.print_cb_arg = u;
    ml.bytes = 0;
    ml.chunks = 0;
    if (mh != ((void*)0))
        lh_MEM_doall_MEM_LEAK(mh, print_leak, &ml);

    if (ml.chunks != 0) {
        char buf[256];

        BIO_snprintf(buf, sizeof(buf), "%ld bytes leaked in %d chunks\n",
                     ml.bytes, ml.chunks);
        cb(buf, strlen(buf), u);
    } else {






        int old_mh_mode;

        CRYPTO_THREAD_write_lock(memdbg_lock);





        old_mh_mode = mh_mode;
        mh_mode = CRYPTO_MEM_CHECK_OFF;

        lh_MEM_free(mh);
        mh = ((void*)0);

        mh_mode = old_mh_mode;
        CRYPTO_THREAD_unlock(memdbg_lock);
    }
    CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_OFF);


    CRYPTO_THREAD_lock_free(memdbg_lock);
    CRYPTO_THREAD_lock_free(long_memdbg_lock);
    memdbg_lock = ((void*)0);
    long_memdbg_lock = ((void*)0);

    return ml.chunks == 0 ? 1 : 0;
}
