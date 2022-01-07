
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LROT_TABLEREF (int ) ;
 int lua_createtable (int *,int,int ) ;
 int lua_pushrotable (int *,int ) ;
 int lua_setmetatable (int *,int) ;
 int pipe_meta ;

__attribute__((used)) static int pipe_create(lua_State *L) {
  lua_createtable (L, 1, 0);
 lua_pushrotable(L, LROT_TABLEREF(pipe_meta));
 lua_setmetatable(L, 1);
 return 1;
}
