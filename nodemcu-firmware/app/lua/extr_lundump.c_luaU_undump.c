
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int ZIO ;
struct TYPE_4__ {char const* name; scalar_t__ total; int * b; int * Z; int * L; } ;
typedef int Proto ;
typedef int Mbuffer ;
typedef TYPE_1__ LoadState ;


 char const* LUA_SIGNATURE ;
 int * LoadFunction (TYPE_1__*,int ) ;
 int LoadHeader (TYPE_1__*) ;
 int luaS_newliteral (int *,char*) ;

Proto* luaU_undump (lua_State* L, ZIO* Z, Mbuffer* buff, const char* name)
{
 LoadState S;
 if (*name=='@' || *name=='=')
  S.name=name+1;
 else if (*name==LUA_SIGNATURE[0])
  S.name="binary string";
 else
  S.name=name;
 S.L=L;
 S.Z=Z;
 S.b=buff;
 LoadHeader(&S);
 S.total=0;
 return LoadFunction(&S,luaS_newliteral(L,"=?"));
}
