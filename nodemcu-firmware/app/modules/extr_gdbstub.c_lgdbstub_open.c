
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int gdbstub_init () ;

__attribute__((used)) static int lgdbstub_open(lua_State *L) {
  gdbstub_init();
  return 0;
}
