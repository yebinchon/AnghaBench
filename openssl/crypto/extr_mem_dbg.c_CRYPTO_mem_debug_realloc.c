
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t num; int array; int array_siz; void* addr; } ;
typedef TYPE_1__ MEM ;


 int CRYPTO_MEM_CHECK_DISABLE ;
 int CRYPTO_MEM_CHECK_ENABLE ;
 int CRYPTO_mem_ctrl (int ) ;
 int CRYPTO_mem_debug_malloc (void*,size_t,int,char const*,int) ;
 int OSSL_NELEM (int ) ;
 int backtrace (int ,int ) ;
 TYPE_1__* lh_MEM_delete (int ,TYPE_1__*) ;
 int lh_MEM_insert (int ,TYPE_1__*) ;
 int mem_check_on () ;
 int mh ;

void CRYPTO_mem_debug_realloc(void *addr1, void *addr2, size_t num,
                              int before_p, const char *file, int line)
{
    MEM m, *mp;

    switch (before_p) {
    case 0:
        break;
    case 1:
        if (addr2 == ((void*)0))
            break;

        if (addr1 == ((void*)0)) {
            CRYPTO_mem_debug_malloc(addr2, num, 128 | before_p, file, line);
            break;
        }

        if (mem_check_on()) {
            CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_DISABLE);

            m.addr = addr1;
            mp = lh_MEM_delete(mh, &m);
            if (mp != ((void*)0)) {
                mp->addr = addr2;
                mp->num = num;

                mp->array_siz = backtrace(mp->array, OSSL_NELEM(mp->array));

                (void)lh_MEM_insert(mh, mp);
            }

            CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ENABLE);
        }
        break;
    }
    return;
}
