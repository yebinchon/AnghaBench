
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct jsonsl_state_st {scalar_t__ pos_begin; scalar_t__ pos_cur; } ;
struct TYPE_4__ {int L; } ;
typedef int LUA_NUMBER ;
typedef TYPE_1__ JSN_DATA ;


 int get_state_buffer (TYPE_1__*,struct jsonsl_state_st*) ;
 int lua_pop (int ,int) ;
 int lua_pushlstring (int ,int ,scalar_t__) ;
 int lua_pushnumber (int ,int ) ;
 int lua_tonumber (int ,int) ;

__attribute__((used)) static void push_number(JSN_DATA *data, struct jsonsl_state_st *state) {
  lua_pushlstring(data->L, get_state_buffer(data, state), state->pos_cur - state->pos_begin);
  LUA_NUMBER r = lua_tonumber(data->L, -1);
  lua_pop(data->L, 1);
  lua_pushnumber(data->L, r);
}
