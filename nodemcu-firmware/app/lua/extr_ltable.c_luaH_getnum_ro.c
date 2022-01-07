
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TValue ;


 int const* luaO_nilobject ;

const TValue *luaH_getnum_ro (void *t, int key) {
  const TValue *res = ((void*)0);
  return res ? res : luaO_nilobject;
}
