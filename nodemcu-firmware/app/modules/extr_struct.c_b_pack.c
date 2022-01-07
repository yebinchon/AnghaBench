
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_5__ {int endian; } ;
typedef TYPE_1__ Header ;


 int controloptions (int *,int,char const**,TYPE_1__*) ;
 int correctbytes (char*,size_t,int ) ;
 int defaultoptions (TYPE_1__*) ;
 int gettoalign (size_t,TYPE_1__*,int,size_t) ;
 int luaL_addchar (int *,char) ;
 int luaL_addlstring (int *,char const*,size_t) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_checklstring (int *,int ,size_t*) ;
 double luaL_checknumber (int *,int ) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_pushresult (int *) ;
 int lua_pushnil (int *) ;
 size_t optsize (int *,int,char const**) ;
 int putinteger (int *,int *,int ,int ,size_t) ;

__attribute__((used)) static int b_pack (lua_State *L) {
  luaL_Buffer b;
  const char *fmt = luaL_checkstring(L, 1);
  Header h;
  int arg = 2;
  size_t totalsize = 0;
  defaultoptions(&h);
  lua_pushnil(L);
  luaL_buffinit(L, &b);
  while (*fmt != '\0') {
    int opt = *fmt++;
    size_t size = optsize(L, opt, &fmt);
    int toalign = gettoalign(totalsize, &h, opt, size);
    totalsize += toalign;
    while (toalign-- > 0) luaL_addchar(&b, '\0');
    switch (opt) {
      case 'b': case 'B': case 'h': case 'H':
      case 'l': case 'L': case 'T': case 'i': case 'I': {
        putinteger(L, &b, arg++, h.endian, size);
        break;
      }
      case 'x': {
        luaL_addchar(&b, '\0');
        break;
      }

      case 'f': {
        float f = (float)luaL_checknumber(L, arg++);
        correctbytes((char *)&f, size, h.endian);
        luaL_addlstring(&b, (char *)&f, size);
        break;
      }
      case 'd': {
        double d = luaL_checknumber(L, arg++);
        correctbytes((char *)&d, size, h.endian);
        luaL_addlstring(&b, (char *)&d, size);
        break;
      }

      case 'c': case 's': {
        size_t l;
        const char *s = luaL_checklstring(L, arg++, &l);
        if (size == 0) size = l;
        luaL_argcheck(L, l >= (size_t)size, arg, "string too short");
        luaL_addlstring(&b, s, size);
        if (opt == 's') {
          luaL_addchar(&b, '\0');
          size++;
        }
        break;
      }
      default: controloptions(L, opt, &fmt, &h);
    }
    totalsize += size;
  }
  luaL_pushresult(&b);
  return 1;
}
