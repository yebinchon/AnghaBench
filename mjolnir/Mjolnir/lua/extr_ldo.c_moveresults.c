
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef void* StkId ;



 int * luaO_nilobject ;
 int setnilvalue (void*) ;
 int setobjs2s (TYPE_1__*,void*,int const*) ;

__attribute__((used)) static int moveresults (lua_State *L, const TValue *firstResult, StkId res,
                                      int nres, int wanted) {
  switch (wanted) {
    case 0: break;
    case 1: {
      if (nres == 0)
        firstResult = luaO_nilobject;
      setobjs2s(L, res, firstResult);
      break;
    }
    case 128: {
      int i;
      for (i = 0; i < nres; i++)
        setobjs2s(L, res + i, firstResult + i);
      L->top = res + nres;
      return 0;
    }
    default: {
      int i;
      if (wanted <= nres) {
        for (i = 0; i < wanted; i++)
          setobjs2s(L, res + i, firstResult + i);
      }
      else {
        for (i = 0; i < nres; i++)
          setobjs2s(L, res + i, firstResult + i);
        for (; i < wanted; i++)
          setnilvalue(res + i);
      }
      break;
    }
  }
  L->top = res + wanted;
  return 1;
}
