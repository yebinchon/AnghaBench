
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 void** luaL_checkudata (int *,int,char*) ;
 int talloc_free (void*) ;

__attribute__((used)) static int destroy_crap(lua_State *L)
{
    void **data = luaL_checkudata(L, 1, "ohthispain");
    talloc_free(data[0]);
    data[0] = ((void*)0);
    return 0;
}
