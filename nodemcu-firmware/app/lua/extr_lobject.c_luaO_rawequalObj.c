
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TValue ;
 int bvalue (int const*) ;
 int fvalue (int const*) ;
 int gcvalue (int const*) ;
 int iscollectable (int const*) ;
 int lua_assert (int ) ;
 int luai_numeq (int ,int ) ;
 int nvalue (int const*) ;
 int pvalue (int const*) ;
 int rvalue (int const*) ;
 int ttype (int const*) ;

int luaO_rawequalObj (const TValue *t1, const TValue *t2) {
  if (ttype(t1) != ttype(t2)) return 0;
  else switch (ttype(t1)) {
    case 130:
      return 1;
    case 129:
      return luai_numeq(nvalue(t1), nvalue(t2));
    case 133:
      return bvalue(t1) == bvalue(t2);
    case 131:
      return pvalue(t1) == pvalue(t2);
    case 128:
      return rvalue(t1) == rvalue(t2);
    case 132:
      return fvalue(t1) == fvalue(t2);
    default:
      lua_assert(iscollectable(t1));
      return gcvalue(t1) == gcvalue(t2);
  }
}
