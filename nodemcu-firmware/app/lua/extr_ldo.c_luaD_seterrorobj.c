
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_8__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ StkId ;






 char* MEMERRMSG ;
 int luaS_newliteral (TYPE_1__*,char*) ;
 int restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,scalar_t__) ;
 int setobjs2s (TYPE_1__*,scalar_t__,scalar_t__) ;
 int setsvalue2s (TYPE_1__*,int ,int ) ;

void luaD_seterrorobj (lua_State *L, int errcode, StkId oldtop) {
  switch (errcode) {
    case 130: {
      ptrdiff_t oldtopr = savestack(L, oldtop);
      setsvalue2s(L, restorestack(L, oldtopr), luaS_newliteral(L, MEMERRMSG));
      break;
    }
    case 131: {
      ptrdiff_t oldtopr = savestack(L, oldtop);
      setsvalue2s(L, restorestack(L, oldtopr), luaS_newliteral(L, "error in error handling"));
      break;
    }
    case 128:
    case 129: {
      setobjs2s(L, oldtop, L->top - 1);
      break;
    }
  }
  L->top = oldtop + 1;
}
