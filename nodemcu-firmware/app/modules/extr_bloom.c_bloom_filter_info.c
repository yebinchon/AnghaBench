
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
typedef int lua_State ;
struct TYPE_2__ {int size; int fns; int occupancy; } ;
typedef TYPE_1__ bloom_t ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushinteger (int *,int) ;

__attribute__((used)) static int bloom_filter_info(lua_State *L) {
  bloom_t *filter = (bloom_t *)luaL_checkudata(L, 1, "bloom.filter");

  lua_pushinteger(L, filter->size << 5);
  lua_pushinteger(L, filter->fns);
  lua_pushinteger(L, filter->occupancy);


  uint64 prob = 1000000;
  if (filter->occupancy > 0) {
    unsigned int ratio = (filter->size << 5) / filter->occupancy;
    int i;

    prob = ratio;

    for (i = 1; i < filter->fns && prob < 1000000; i++) {
      prob = prob * ratio;
    }

    if (prob < 1000000) {

      unsigned int ratio256 = (filter->size << 13) / filter->occupancy;

      uint64 prob256 = ratio256;

      for (i = 1; i < filter->fns && prob256 < 256000000; i++) {
        prob256 = (prob256 * ratio256) >> 8;
      }

      prob = prob256 >> 8;
    }
  }

  lua_pushinteger(L, prob > 1000000 ? 1000000 : (int) prob);

  return 4;
}
