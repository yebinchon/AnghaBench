
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * namenum; int * lock; } ;
typedef TYPE_1__ OSSL_NAMEMAP ;


 int * CRYPTO_THREAD_lock_new () ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int * lh_NAMENUM_ENTRY_new (int ,int ) ;
 int namenum_cmp ;
 int namenum_hash ;
 int ossl_namemap_free (TYPE_1__*) ;

OSSL_NAMEMAP *ossl_namemap_new(void)
{
    OSSL_NAMEMAP *namemap;

    if ((namemap = OPENSSL_zalloc(sizeof(*namemap))) != ((void*)0)
        && (namemap->lock = CRYPTO_THREAD_lock_new()) != ((void*)0)
        && (namemap->namenum =
            lh_NAMENUM_ENTRY_new(namenum_hash, namenum_cmp)) != ((void*)0))
        return namemap;

    ossl_namemap_free(namemap);
    return ((void*)0);
}
