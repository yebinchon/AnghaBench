
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_GCSETMEMLIMIT ;
 int atoi (char const*) ;
 int dolibrary (int *,char const*) ;
 int dostring (int *,char const*,char*) ;
 int lua_assert (int) ;
 int lua_gc (int *,int ,int) ;

__attribute__((used)) static int runargs (lua_State *L, char **argv, int n) {
  int i;
  for (i = 1; i < n; i++) {
    if (argv[i] == ((void*)0)) continue;
    lua_assert(argv[i][0] == '-');
    switch (argv[i][1]) {
      case 'e': {
        const char *chunk = argv[i] + 2;
        if (*chunk == '\0') chunk = argv[++i];
        lua_assert(chunk != ((void*)0));
        if (dostring(L, chunk, "=(command line)") != 0)
          return 1;
        break;
      }
      case 'm': {
        const char *limit = argv[i] + 2;
        int memlimit=0;
        if (*limit == '\0') limit = argv[++i];
        lua_assert(limit != ((void*)0));
        memlimit = atoi(limit);
        lua_gc(L, LUA_GCSETMEMLIMIT, memlimit);
        break;
      }
      case 'l': {
        const char *filename = argv[i] + 2;
        if (*filename == '\0') filename = argv[++i];
        lua_assert(filename != ((void*)0));
        if (dolibrary(L, filename))
          return 1;
        break;
      }
      default: break;
    }
  }
  return 0;
}
