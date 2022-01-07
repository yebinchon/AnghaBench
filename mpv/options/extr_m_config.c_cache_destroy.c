
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_cache {int dummy; } ;


 int m_config_cache_set_dispatch_change_cb (struct m_config_cache*,int *,int *,int *) ;
 int m_config_cache_set_wakeup_cb (struct m_config_cache*,int *,int *) ;

__attribute__((used)) static void cache_destroy(void *p)
{
    struct m_config_cache *cache = p;



    m_config_cache_set_wakeup_cb(cache, ((void*)0), ((void*)0));
    m_config_cache_set_dispatch_change_cb(cache, ((void*)0), ((void*)0), ((void*)0));
}
