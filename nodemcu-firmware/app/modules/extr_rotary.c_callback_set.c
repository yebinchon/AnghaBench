
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * callback; } ;
typedef TYPE_1__ DATA ;


 int CALLBACK_COUNT ;
 int callback_setOne (int *,int *,int) ;
 TYPE_1__** data ;

__attribute__((used)) static int callback_set(lua_State* L, int id, int mask, int arg_number)
{
  DATA *d = data[id];
  int result = 0;

  int i;
  for (i = 0; i < CALLBACK_COUNT; i++) {
    if (mask & (1 << i)) {
      result |= callback_setOne(L, &d->callback[i], arg_number);
    }
  }

  return result;
}
