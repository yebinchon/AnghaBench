
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Proto ;
typedef int FILE ;


 scalar_t__ IS (char*) ;
 scalar_t__ LUA_OK ;
 int cannot (char*) ;
 int * combine (int *,int) ;
 scalar_t__ dumping ;
 int fatal (char*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (int *,char*) ;
 int listing ;
 scalar_t__ luaL_loadfile (int *,char const*) ;
 int luaU_dump (int *,int const*,int ,int *,int ) ;
 int luaU_print (int const*,int) ;
 int lua_checkstack (int *,int) ;
 int lua_lock (int *) ;
 scalar_t__ lua_tointeger (int *,int) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 int lua_unlock (int *) ;
 int * output ;
 int * stdout ;
 int stripping ;
 int writer ;

__attribute__((used)) static int pmain(lua_State* L)
{
 int argc=(int)lua_tointeger(L,1);
 char** argv=(char**)lua_touserdata(L,2);
 const Proto* f;
 int i;
 if (!lua_checkstack(L,argc)) fatal("too many input files");
 for (i=0; i<argc; i++)
 {
  const char* filename=IS("-") ? ((void*)0) : argv[i];
  if (luaL_loadfile(L,filename)!=LUA_OK) fatal(lua_tostring(L,-1));
 }
 f=combine(L,argc);
 if (listing) luaU_print(f,listing>1);
 if (dumping)
 {
  FILE* D= (output==((void*)0)) ? stdout : fopen(output,"wb");
  if (D==((void*)0)) cannot("open");
  lua_lock(L);
  luaU_dump(L,f,writer,D,stripping);
  lua_unlock(L);
  if (ferror(D)) cannot("write");
  if (fclose(D)) cannot("close");
 }
 return 0;
}
