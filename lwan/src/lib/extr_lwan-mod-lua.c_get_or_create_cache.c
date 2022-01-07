
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_lua_priv {int cache_key; int cache_period; } ;
struct cache {int dummy; } ;


 scalar_t__ UNLIKELY (int) ;
 struct cache* cache_create (int ,int ,struct lwan_lua_priv*,int ) ;
 int lwan_status_debug (char*) ;
 int lwan_status_error (char*) ;
 struct cache* pthread_getspecific (int ) ;
 int pthread_setspecific (int ,struct cache*) ;
 int state_create ;
 int state_destroy ;

__attribute__((used)) static struct cache *get_or_create_cache(struct lwan_lua_priv *priv)
{
    struct cache *cache = pthread_getspecific(priv->cache_key);

    if (UNLIKELY(!cache)) {
        lwan_status_debug("Creating cache for this thread");
        cache =
            cache_create(state_create, state_destroy, priv, priv->cache_period);
        if (UNLIKELY(!cache))
            lwan_status_error("Could not create cache");


        pthread_setspecific(priv->cache_key, cache);
    }

    return cache;
}
