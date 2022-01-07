
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int align; int endian; } ;
typedef TYPE_1__ Header ;


 int BIG ;
 int LITTLE ;
 int MAXALIGN ;
 int getnum (char const**,int ) ;
 int isp2 (int) ;
 int luaL_argerror (int *,int,char const*) ;
 int luaL_error (int *,char*,int) ;
 char* lua_pushfstring (int *,char*,int) ;

__attribute__((used)) static void controloptions (lua_State *L, int opt, const char **fmt,
                            Header *h) {
  switch (opt) {
    case ' ': return;
    case '>': h->endian = BIG; return;
    case '<': h->endian = LITTLE; return;
    case '!': {
      int a = getnum(fmt, MAXALIGN);
      if (!isp2(a))
        luaL_error(L, "alignment %d is not a power of 2", a);
      h->align = a;
      return;
    }
    default: {
      const char *msg = lua_pushfstring(L, "invalid format option '%c'", opt);
      luaL_argerror(L, 1, msg);
    }
  }
}
