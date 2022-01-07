
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * callback; } ;
typedef TYPE_1__ DATA ;


 int CALLBACK_COUNT ;
 int callback_free_one (int *,int *) ;
 TYPE_1__** data ;

__attribute__((used)) static void callback_free(lua_State* L, unsigned int id, int mask)
{
  DATA *d = data[id];

  if (d) {
    int i;
    for (i = 0; i < CALLBACK_COUNT; i++) {
      if (mask & (1 << i)) {
 callback_free_one(L, &d->callback[i]);
      }
    }
  }
}
