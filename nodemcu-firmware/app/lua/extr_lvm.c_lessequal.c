
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;


 int TM_LE ;
 int TM_LT ;
 int call_orderTM (int *,int const*,int const*,int ) ;
 scalar_t__ l_strcmp (int ,int ) ;
 int luaG_ordererror (int *,int const*,int const*) ;
 int luai_numle (int ,int ) ;
 int nvalue (int const*) ;
 int rawtsvalue (int const*) ;
 scalar_t__ ttisnumber (int const*) ;
 scalar_t__ ttisstring (int const*) ;
 scalar_t__ ttype (int const*) ;

__attribute__((used)) static int lessequal (lua_State *L, const TValue *l, const TValue *r) {
  int res;
  if (ttype(l) != ttype(r))
    return luaG_ordererror(L, l, r);
  else if (ttisnumber(l))
    return luai_numle(nvalue(l), nvalue(r));
  else if (ttisstring(l))
    return l_strcmp(rawtsvalue(l), rawtsvalue(r)) <= 0;
  else if ((res = call_orderTM(L, l, r, TM_LE)) != -1)
    return res;
  else if ((res = call_orderTM(L, r, l, TM_LT)) != -1)
    return !res;
  return luaG_ordererror(L, l, r);
}
