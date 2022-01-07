
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Smain {int argc; char** argv; } ;
typedef int lua_State ;
typedef int Proto ;
typedef int FILE ;


 scalar_t__ IS (char*) ;
 int LUA_ERR_CC_INTOVERFLOW ;
 int LUA_ERR_CC_NOTINTEGER ;
 int address ;
 int cannot (char*) ;
 int * combine (int *,int,int ) ;
 int dumpToFlashImage (int *,int const*,int ,int *,int ,int ,int ) ;
 scalar_t__ dumping ;
 char const* execute ;
 int fatal (char*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ flash ;
 int * fopen (int *,char*) ;
 int listing ;
 int lookup ;
 scalar_t__ luaL_loadfile (int *,char const*) ;
 int luaL_openlibs (int *) ;
 int luaU_dump_crosscompile (int *,int const*,int ,int *,int ,int ) ;
 int luaU_print (int const*,int) ;
 int lua_checkstack (int *,int) ;
 int lua_isfunction (int *,int) ;
 int lua_lock (int *) ;
 scalar_t__ lua_pcall (int *,int,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 int lua_unlock (int *) ;
 int maxSize ;
 int * output ;
 int * stdout ;
 int stripping ;
 int target ;
 int writer ;

__attribute__((used)) static int pmain(lua_State* L)
{
 struct Smain* s = (struct Smain*)lua_touserdata(L, 1);
 int argc=s->argc;
 char** argv=s->argv;
 const Proto* f;
 int i;
 if (!lua_checkstack(L,argc)) fatal("too many input files");
 if (execute)
 {
  if (luaL_loadfile(L,execute)!=0) fatal(lua_tostring(L,-1));
  luaL_openlibs(L);
  lua_pushstring(L, execute);
  if (lua_pcall(L, 1, 1, 0)) fatal(lua_tostring(L,-1));
  if (!lua_isfunction(L, -1))
  {
   lua_pop(L,1);
   if(argc == 0) return 0;
   execute = ((void*)0);
  }
 }
 for (i=0; i<argc; i++)
 {
  const char* filename=IS("-") ? ((void*)0) : argv[i];
  if (luaL_loadfile(L,filename)!=0) fatal(lua_tostring(L,-1));
 }
 f=combine(L,argc + (execute ? 1: 0), lookup);
 if (listing) luaU_print(f,listing>1);
 if (dumping)
 {
  int result;
  FILE* D= (output==((void*)0)) ? stdout : fopen(output,"wb");
  if (D==((void*)0)) cannot("open");
  lua_lock(L);
  if (flash)
  {
    result=dumpToFlashImage(L,f,writer, D, stripping, address, maxSize);
  } else
  {
    result=luaU_dump_crosscompile(L,f,writer,D,stripping,target);
  }
  lua_unlock(L);
  if (result==LUA_ERR_CC_INTOVERFLOW) fatal("value too big or small for target integer type");
  if (result==LUA_ERR_CC_NOTINTEGER) fatal("target lua_Number is integral but fractional value found");
  if (ferror(D)) cannot("write");
  if (fclose(D)) cannot("close");
 }
 return 0;
}
