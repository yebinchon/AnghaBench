
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int isTouching () ;
 int lua_pushboolean (int *,int ) ;

__attribute__((used)) static int xpt2046_isTouched( lua_State* L ) {
  lua_pushboolean( L, isTouching());
  return 1;
}
