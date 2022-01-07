
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lua_State ;
struct TYPE_3__ {int * callback; } ;
typedef TYPE_1__ DATA ;


 int callback_callOne (int *,int ,int,int,int ) ;

__attribute__((used)) static void callback_call(lua_State* L, DATA *d, int cbnum, int arg, uint32_t time)
{
  if (d) {
    callback_callOne(L, d->callback[cbnum], 1 << cbnum, arg, time);
  }
}
