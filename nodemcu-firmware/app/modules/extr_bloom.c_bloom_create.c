
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int size; int fns; } ;
typedef TYPE_1__ bloom_t ;


 int luaL_checkinteger (int *,int) ;
 int luaL_getmetatable (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int bloom_create(lua_State *L) {
  int items = luaL_checkinteger(L, 1);
  int error = luaL_checkinteger(L, 2);

  int n = error;
  int logp = 0;
  while (n > 0) {
    n = n >> 1;
    logp--;
  }

  int bits = -items * logp;
  bits += bits >> 1;

  bits = (bits + 31) & ~31;

  if (bits < 256) {
    bits = 256;
  }

  int size = bits >> 3;

  int fns = bits / items;
  fns = (fns >> 1) + fns / 6;

  if (fns < 2) {
    fns = 2;
  }
  if (fns > 15) {
    fns = 15;
  }

  bloom_t *filter = (bloom_t *) lua_newuserdata(L, sizeof(bloom_t) + size);


  luaL_getmetatable(L, "bloom.filter");
  lua_setmetatable(L, -2);

  memset(filter, 0, sizeof(bloom_t) + size);
  filter->size = size >> 2;
  filter->fns = fns;

  return 1;
}
