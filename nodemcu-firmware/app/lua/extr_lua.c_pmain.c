
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Smain {char** argv; int status; int argc; } ;
typedef int lua_State ;


 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 int collectargs (char**,int*,int*,int*) ;
 int * globalL ;
 int handle_luainit (int *) ;
 int luaL_openlibs (int *) ;
 int lua_gc (int *,int ,int ) ;
 scalar_t__ lua_touserdata (int *,int) ;
 int print_version (int *) ;
 char* progname ;
 int runargs (int *,char**,int) ;

__attribute__((used)) static int pmain (lua_State *L) {
  struct Smain *s = (struct Smain *)lua_touserdata(L, 1);
  char **argv = s->argv;
  int script;
  int has_i = 0, has_v = 0, has_e = 0;
  globalL = L;
  if (argv[0] && argv[0][0]) progname = argv[0];
  lua_gc(L, LUA_GCSTOP, 0);
  luaL_openlibs(L);
  lua_gc(L, LUA_GCRESTART, 0);
  print_version(L);
  s->status = handle_luainit(L);
  script = collectargs(argv, &has_i, &has_v, &has_e);
  if (script < 0) {
    s->status = 1;
    return 0;
  }
  s->status = runargs(L, argv, (script > 0) ? script : s->argc);
  if (s->status != 0) return 0;
  return 0;
}
