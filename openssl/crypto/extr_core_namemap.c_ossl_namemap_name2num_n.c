
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int number; int * name; } ;
struct TYPE_7__ {int lock; int namenum; } ;
typedef TYPE_1__ OSSL_NAMEMAP ;
typedef TYPE_2__ NAMENUM_ENTRY ;


 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_strndup (char const*,size_t) ;
 TYPE_2__* lh_NAMENUM_ENTRY_retrieve (int ,TYPE_2__*) ;
 TYPE_1__* ossl_namemap_stored (int *) ;

int ossl_namemap_name2num_n(const OSSL_NAMEMAP *namemap,
                            const char *name, size_t name_len)
{
    NAMENUM_ENTRY *namenum_entry, namenum_tmpl;
    int number = 0;


    if (namemap == ((void*)0))
        namemap = ossl_namemap_stored(((void*)0));


    if (namemap == ((void*)0))
        return 0;

    if ((namenum_tmpl.name = OPENSSL_strndup(name, name_len)) == ((void*)0))
        return 0;
    namenum_tmpl.number = 0;
    CRYPTO_THREAD_read_lock(namemap->lock);
    namenum_entry =
        lh_NAMENUM_ENTRY_retrieve(namemap->namenum, &namenum_tmpl);
    if (namenum_entry != ((void*)0))
        number = namenum_entry->number;
    CRYPTO_THREAD_unlock(namemap->lock);
    OPENSSL_free(namenum_tmpl.name);

    return number;
}
