
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_lua_state {int L; } ;
struct lwan_lua_priv {int script; int script_file; } ;
struct cache_entry {int dummy; } ;


 scalar_t__ LIKELY (int ) ;
 scalar_t__ UNLIKELY (int) ;
 int free (struct lwan_lua_state*) ;
 int lwan_lua_create_state (int ,int ) ;
 struct lwan_lua_state* malloc (int) ;

__attribute__((used)) static struct cache_entry *state_create(const char *key __attribute__((unused)),
                                        void *context)
{
    struct lwan_lua_priv *priv = context;
    struct lwan_lua_state *state = malloc(sizeof(*state));

    if (UNLIKELY(!state))
        return ((void*)0);

    state->L = lwan_lua_create_state(priv->script_file, priv->script);
    if (LIKELY(state->L))
        return (struct cache_entry *)state;

    free(state);
    return ((void*)0);
}
