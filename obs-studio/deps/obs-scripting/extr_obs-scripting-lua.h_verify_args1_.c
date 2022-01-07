
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* param_cb ) (int *,int) ;
typedef int lua_State ;


 int lua_gettop (int *) ;
 int warn (char*,...) ;

__attribute__((used)) static inline bool verify_args1_(lua_State *script, param_cb param1_check,
     const char *func)
{
 if (lua_gettop(script) != 1) {
  warn("Wrong number of parameters for %s", func);
  return 0;
 }
 if (!param1_check(script, 1)) {
  warn("Wrong parameter type for parameter %d of %s", 1, func);
  return 0;
 }

 return 1;
}
