
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; } ;
typedef TYPE_1__ buffer_t ;


 int LROT_TABLEREF (int ) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushrotable (int *,int ) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setmetatable (int *,int) ;
 int pipe_meta ;

__attribute__((used)) static buffer_t *newPipeUD(lua_State *L, int ndx, int n) {
  buffer_t *ud = (buffer_t *) lua_newuserdata(L, sizeof(buffer_t));
  lua_pushrotable(L, LROT_TABLEREF(pipe_meta));
 lua_setmetatable(L, -2);
 ud->start = ud->end = 0;
  lua_rawseti(L, ndx, n);
  return ud;
}
