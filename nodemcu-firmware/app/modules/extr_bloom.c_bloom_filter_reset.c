
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int size; scalar_t__ occupancy; int buf; } ;
typedef TYPE_1__ bloom_t ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int bloom_filter_reset(lua_State *L) {
  bloom_t *filter = (bloom_t *)luaL_checkudata(L, 1, "bloom.filter");

  memset(filter->buf, 0, filter->size << 2);
  filter->occupancy = 0;

  return 0;
}
