
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int lua_Reader ;
struct TYPE_3__ {int * p; scalar_t__ i; scalar_t__ n; void* data; int reader; int * L; } ;
typedef TYPE_1__ ZIO ;



void luaZ_init (lua_State *L, ZIO *z, lua_Reader reader, void *data) {
  z->L = L;
  z->reader = reader;
  z->data = data;
  z->n = z->i = 0;
  z->p = ((void*)0);
}
