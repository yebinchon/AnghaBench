
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int StkId ;


 int luaD_call (TYPE_1__*,scalar_t__,int) ;
 int luaD_checkstack (TYPE_1__*,int) ;
 int restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,int ) ;
 int setobj2s (TYPE_1__*,scalar_t__,int const*) ;
 int setobjs2s (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static void callTMres (lua_State *L, StkId res, const TValue *f,
                        const TValue *p1, const TValue *p2) {
  ptrdiff_t result = savestack(L, res);
  setobj2s(L, L->top, f);
  setobj2s(L, L->top+1, p1);
  setobj2s(L, L->top+2, p2);
  luaD_checkstack(L, 3);
  L->top += 3;
  luaD_call(L, L->top - 3, 1);
  res = restorestack(L, result);
  L->top--;
  setobjs2s(L, res, L->top);
}
