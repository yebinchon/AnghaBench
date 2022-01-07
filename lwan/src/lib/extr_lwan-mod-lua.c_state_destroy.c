
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_lua_state {int L; } ;
struct cache_entry {int dummy; } ;


 int free (struct lwan_lua_state*) ;
 int lua_close (int ) ;

__attribute__((used)) static void state_destroy(struct cache_entry *entry,
                          void *context __attribute__((unused)))
{
    struct lwan_lua_state *state = (struct lwan_lua_state *)entry;

    lua_close(state->L);
    free(state);
}
