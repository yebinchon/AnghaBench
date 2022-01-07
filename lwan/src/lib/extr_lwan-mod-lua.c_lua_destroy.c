
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_lua_priv {struct lwan_lua_priv* script; struct lwan_lua_priv* script_file; struct lwan_lua_priv* default_type; int cache_key; } ;


 int free (struct lwan_lua_priv*) ;
 int pthread_key_delete (int ) ;

__attribute__((used)) static void lua_destroy(void *instance)
{
    struct lwan_lua_priv *priv = instance;

    if (priv) {
        pthread_key_delete(priv->cache_key);
        free(priv->default_type);
        free(priv->script_file);
        free(priv->script);
        free(priv);
    }
}
