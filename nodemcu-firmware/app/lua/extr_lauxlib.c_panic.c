
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int c_stderr ;
 int fprintf (int ,char*,char*) ;
 char* lua_tostring (int *,int) ;
 int luai_writestringerror (char*,char*) ;

__attribute__((used)) static int panic (lua_State *L) {
  (void)L;




  luai_writestringerror("PANIC: unprotected error in call to Lua API (%s)\n",
                   lua_tostring(L, -1));

  while (1) {}
  return 0;
}
