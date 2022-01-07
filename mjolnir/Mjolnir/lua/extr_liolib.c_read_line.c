
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int FILE ;


 int EOF ;
 int LUAL_BUFFERSIZE ;
 int l_getc (int *) ;
 int l_lockfile (int *) ;
 int l_unlockfile (int *) ;
 int luaL_addchar (int *,int) ;
 int luaL_addsize (int *,int) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_prepbuffer (int *) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_rawlen (int *,int) ;

__attribute__((used)) static int read_line (lua_State *L, FILE *f, int chop) {
  luaL_Buffer b;
  int c = '\0';
  luaL_buffinit(L, &b);
  while (c != EOF && c != '\n') {
    char *buff = luaL_prepbuffer(&b);
    int i = 0;
    l_lockfile(f);
    while (i < LUAL_BUFFERSIZE && (c = l_getc(f)) != EOF && c != '\n')
      buff[i++] = c;
    l_unlockfile(f);
    luaL_addsize(&b, i);
  }
  if (!chop && c == '\n')
    luaL_addchar(&b, c);
  luaL_pushresult(&b);

  return (c == '\n' || lua_rawlen(L, -1) > 0);
}
