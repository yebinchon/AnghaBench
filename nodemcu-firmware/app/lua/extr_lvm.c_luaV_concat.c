
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_18__ {int base; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ lu_mem ;
struct TYPE_20__ {size_t n; } ;
struct TYPE_19__ {size_t len; } ;
struct TYPE_17__ {scalar_t__ memlimit; TYPE_6__ buff; } ;
typedef int StkId ;


 TYPE_15__* G (TYPE_1__*) ;
 scalar_t__ MAX_SIZET ;
 int TM_CONCAT ;
 int call_binTM (TYPE_1__*,int,int,int,int ) ;
 int fixedstack (TYPE_1__*) ;
 int luaG_concaterror (TYPE_1__*,int,int) ;
 int luaG_runerror (TYPE_1__*,char*) ;
 int luaS_newlstr (TYPE_1__*,char*,size_t) ;
 char* luaZ_openspace (TYPE_1__*,TYPE_6__*,size_t) ;
 int luaZ_resetbuffer (TYPE_6__*) ;
 int memcpy (char*,int ,size_t) ;
 int setsvalue2s (TYPE_1__*,int,int ) ;
 int svalue (int) ;
 scalar_t__ tostring (TYPE_1__*,int) ;
 TYPE_3__* tsvalue (int) ;
 scalar_t__ ttisnumber (int) ;
 scalar_t__ ttisstring (int) ;
 int unfixedstack (TYPE_1__*) ;

void luaV_concat (lua_State *L, int total, int last) {
  lu_mem max_sizet = MAX_SIZET;
  if (G(L)->memlimit < max_sizet) max_sizet = G(L)->memlimit;
  do {


    StkId top = L->base + last + 1;
    fixedstack(L);
    int n = 2;
    if (!(ttisstring(top-2) || ttisnumber(top-2)) || !tostring(L, top-1)) {
      unfixedstack(L);
      if (!call_binTM(L, top-2, top-1, top-2, TM_CONCAT)) {

        top = L->base + last + 1;
        luaG_concaterror(L, top-2, top-1);
      }
    } else if (tsvalue(top-1)->len == 0) {
      (void)tostring(L, top - 2);
    } else {

      size_t tl = tsvalue(top-1)->len;
      char *buffer;
      int i;

      for (n = 1; n < total && tostring(L, top-n-1); n++) {
        size_t l = tsvalue(top-n-1)->len;
        if (l >= max_sizet - tl) luaG_runerror(L, "string length overflow");
        tl += l;
      }
      G(L)->buff.n = tl;
      buffer = luaZ_openspace(L, &G(L)->buff, tl);
      tl = 0;
      for (i=n; i>0; i--) {
        size_t l = tsvalue(top-i)->len;
        memcpy(buffer+tl, svalue(top-i), l);
        tl += l;
      }
      setsvalue2s(L, top-n, luaS_newlstr(L, buffer, tl));
      luaZ_resetbuffer(&G(L)->buff);
    }
    total -= n-1;
    last -= n-1;
    unfixedstack(L);
  } while (total > 1);
}
