
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int IO_INPUT ;
 int g_iofile (int *,int ,char*) ;

__attribute__((used)) static int io_input (lua_State *L) {
  return g_iofile(L, IO_INPUT, "r");
}
