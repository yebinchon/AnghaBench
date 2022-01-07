
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TString ;


 char* getstr (int const*) ;
 int * luaS_new (int *,char const*) ;
 int * luaS_newlstr (int *,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static TString *corename(lua_State *L, const TString *filename)
{
 const char *fn = getstr(filename)+1;
 const char *s = strrchr(fn, '/');
 if (!s) s = strrchr(fn, '\\');
 s = s ? s + 1 : fn;
 while (*s == '.') s++;
 const char *e = strchr(s, '.');
 int l = e ? e - s: strlen(s);
 return l ? luaS_newlstr (L, s, l) : luaS_new(L, fn);
}
