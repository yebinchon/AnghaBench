
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int gdbstub_redirect_output (int ) ;
 int lua_toboolean (int *,int) ;

__attribute__((used)) static int lgdbstub_gdboutput(lua_State *L) {
  gdbstub_redirect_output(lua_toboolean(L, 1));
  return 0;
}
