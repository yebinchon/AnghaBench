
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* addr; } ;
typedef TYPE_1__ MEM ;


 int CRYPTO_MEM_CHECK_DISABLE ;
 int CRYPTO_MEM_CHECK_ENABLE ;
 int CRYPTO_mem_ctrl (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* lh_MEM_delete (int *,TYPE_1__*) ;
 int mem_check_on () ;
 int * mh ;

void CRYPTO_mem_debug_free(void *addr, int before_p,
        const char *file, int line)
{
    MEM m, *mp;

    switch (before_p) {
    case 0:
        if (addr == ((void*)0))
            break;

        if (mem_check_on() && (mh != ((void*)0))) {
            CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_DISABLE);
            m.addr = addr;
            mp = lh_MEM_delete(mh, &m);
            OPENSSL_free(mp);
            CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
        }
        break;
    case 1:
        break;
    }
}
