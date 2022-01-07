
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int namenum; scalar_t__ stored; } ;
typedef TYPE_1__ OSSL_NAMEMAP ;


 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int lh_NAMENUM_ENTRY_doall (int ,int ) ;
 int lh_NAMENUM_ENTRY_free (int ) ;
 int namenum_free ;

void ossl_namemap_free(OSSL_NAMEMAP *namemap)
{
    if (namemap == ((void*)0) || namemap->stored)
        return;

    lh_NAMENUM_ENTRY_doall(namemap->namenum, namenum_free);
    lh_NAMENUM_ENTRY_free(namemap->namenum);

    CRYPTO_THREAD_lock_free(namemap->lock);
    OPENSSL_free(namemap);
}
