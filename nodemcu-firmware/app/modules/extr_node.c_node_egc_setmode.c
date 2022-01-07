
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 unsigned int EGC_ALWAYS ;
 unsigned int EGC_ON_ALLOC_FAILURE ;
 unsigned int EGC_ON_MEM_LIMIT ;
 int legc_set_mode (int *,unsigned int,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_optinteger (int *,int,int ) ;

__attribute__((used)) static int node_egc_setmode(lua_State* L) {
  unsigned mode = luaL_checkinteger(L, 1);
  int limit = luaL_optinteger (L, 2, 0);

  luaL_argcheck(L, mode <= (EGC_ON_ALLOC_FAILURE | EGC_ON_MEM_LIMIT | EGC_ALWAYS), 1, "invalid mode");
  luaL_argcheck(L, !(mode & EGC_ON_MEM_LIMIT) || limit!=0, 1, "limit must be non-zero");

  legc_set_mode( L, mode, limit );
  return 0;
}
