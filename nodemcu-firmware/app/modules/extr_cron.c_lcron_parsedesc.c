
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cronent_desc {void* dow; void* mon; void* dom; void* hour; void* min; } ;
typedef int lua_State ;


 void* lcron_parsepart (int *,char*,char**,int,int) ;
 int luaL_error (int *,char*,int) ;

__attribute__((used)) static int lcron_parsedesc(lua_State *L, char *str, struct cronent_desc *desc) {
  char *s = str;
  desc->min = lcron_parsepart(L, s, &s, 0, 59);
  if (*s != ' ' && *s != '\t') return luaL_error(L, "invalid spec (separator @%d)", s - str);
  desc->hour = lcron_parsepart(L, s + 1, &s, 0, 23);
  if (*s != ' ' && *s != '\t') return luaL_error(L, "invalid spec (separator @%d)", s - str);
  desc->dom = lcron_parsepart(L, s + 1, &s, 1, 31);
  if (*s != ' ' && *s != '\t') return luaL_error(L, "invalid spec (separator @%d)", s - str);
  desc->mon = lcron_parsepart(L, s + 1, &s, 1, 12);
  if (*s != ' ' && *s != '\t') return luaL_error(L, "invalid spec (separator @%d)", s - str);
  desc->dow = lcron_parsepart(L, s + 1, &s, 0, 6);
  while (*s != '\0' && (*s == ' ' || *s == '\t')) {
    s++;
  }
  if (*s != 0) return luaL_error(L, "invalid spec (trailing @%d)", s - str);
  return 0;
}
