
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int user_config; } ;
typedef TYPE_1__ user_config_cache_entry ;


 scalar_t__ Z_PTR_P (int *) ;
 int free (TYPE_1__*) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static void user_config_cache_entry_dtor(zval *el)
{
    user_config_cache_entry *entry = (user_config_cache_entry *)Z_PTR_P(el);
    zend_hash_destroy(&entry->user_config);
    free(entry);
}
