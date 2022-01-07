
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int TValue ;





 int cast_num (int) ;
 int const* luaH_getnum_ro (void*,int) ;
 int const* luaH_getstr_ro (void*,int ) ;
 int const* luaO_nilobject ;
 int lua_number2int (int,int ) ;
 int luai_numeq (int ,int ) ;
 int nvalue (int const*) ;
 int rawtsvalue (int const*) ;
 int ttype (int const*) ;

const TValue *luaH_get_ro (void *t, const TValue *key) {
  switch (ttype(key)) {
    case 130: return luaO_nilobject;
    case 128: return luaH_getstr_ro(t, rawtsvalue(key));
    case 129: {
      int k;
      lua_Number n = nvalue(key);
      lua_number2int(k, n);
      if (luai_numeq(cast_num(k), nvalue(key)))
        return luaH_getnum_ro(t, k);

    }
    default: {
      return luaO_nilobject;
    }
  }
}
