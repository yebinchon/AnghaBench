
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int user_config_cache ;
 int user_config_cache_entry_dtor ;
 int zend_hash_init (int *,int ,int *,int ,int) ;

__attribute__((used)) static void user_config_cache_init()
{
    zend_hash_init(&user_config_cache, 0, ((void*)0), user_config_cache_entry_dtor, 1);
}
