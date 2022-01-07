
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ fclose (int *) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int pushresult (int *,int,int *) ;
 int * stderr ;
 int * stdin ;
 int * stdout ;
 int ** tofilep (int *) ;

__attribute__((used)) static int aux_close (lua_State *L) {
  FILE **p = tofilep(L);
  if(*p == stdin || *p == stdout || *p == stderr)
  {
    lua_pushnil(L);
    lua_pushliteral(L, "cannot close standard file");
    return 2;
  }
  int ok = (fclose(*p) == 0);
  *p = ((void*)0);
  return pushresult(L, ok, ((void*)0));
}
