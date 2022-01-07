
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int TValue ;
typedef int TMS ;
typedef int StkId ;
 int call_binTM (int *,int const*,int const*,int ,int) ;
 int luaG_aritherror (int *,int ,int ) ;
 int * luaV_tonumber (int const*,int *) ;
 int lua_assert (int ) ;
 int luai_lnumdiv (int ,int ) ;
 int luai_lnummod (int ,int ) ;
 int luai_numadd (int ,int ) ;
 int luai_nummul (int ,int ) ;
 int luai_numpow (int ,int ) ;
 int luai_numsub (int ,int ) ;
 int luai_numunm (int ) ;
 int nvalue (int const*) ;
 int restorestack (int *,int ) ;
 int savestack (int *,int const*) ;
 int setnvalue (int ,int ) ;

__attribute__((used)) static void Arith (lua_State *L, StkId ra, const TValue *rb,
                   const TValue *rc, TMS op) {
  TValue tempb, tempc;
  const TValue *b, *c;
  if ((b = luaV_tonumber(rb, &tempb)) != ((void*)0) &&
      (c = luaV_tonumber(rc, &tempc)) != ((void*)0)) {
    lua_Number nb = nvalue(b), nc = nvalue(c);
    switch (op) {
      case 134: setnvalue(ra, luai_numadd(nb, nc)); break;
      case 129: setnvalue(ra, luai_numsub(nb, nc)); break;
      case 131: setnvalue(ra, luai_nummul(nb, nc)); break;
      case 133: setnvalue(ra, luai_lnumdiv(nb, nc)); break;
      case 132: setnvalue(ra, luai_lnummod(nb, nc)); break;
      case 130: setnvalue(ra, luai_numpow(nb, nc)); break;
      case 128: setnvalue(ra, luai_numunm(nb)); break;
      default: lua_assert(0); break;
    }
  }
  else {
    ptrdiff_t br = savestack(L, rb);
    ptrdiff_t cr = savestack(L, rc);
    if (!call_binTM(L, rb, rc, ra, op)) {
      luaG_aritherror(L, restorestack(L, br), restorestack(L, cr));
    }
  }
}
