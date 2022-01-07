
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hashes; struct TYPE_4__* dir; } ;
typedef TYPE_1__ BY_DIR_ENTRY ;


 int OPENSSL_free (TYPE_1__*) ;
 int by_dir_hash_free ;
 int sk_BY_DIR_HASH_pop_free (int ,int ) ;

__attribute__((used)) static void by_dir_entry_free(BY_DIR_ENTRY *ent)
{
    OPENSSL_free(ent->dir);
    sk_BY_DIR_HASH_pop_free(ent->hashes, by_dir_hash_free);
    OPENSSL_free(ent);
}
