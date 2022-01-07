
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int lua_State ;
struct TYPE_3__ {int suspend_policy; void* tmr_cb_ptr; } ;
typedef TYPE_1__ cb_registry_item_t ;


 int CB_LIST_STR ;
 int L_REGISTRY ;
 int add_to_reg_queue (void*,int ) ;
 int * lua_getstate () ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 TYPE_1__* lua_newuserdata (int *,int) ;
 size_t lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnumber (int *,size_t) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;
 int push_swtmr_registry_key (int *) ;

void swtmr_cb_register(void* timer_cb_ptr, uint8 suspend_policy){
  lua_State* L = lua_getstate();
  if(!L){


    add_to_reg_queue(timer_cb_ptr, suspend_policy);
    return;
  }
  if(timer_cb_ptr){
    size_t cb_list_last_idx = 0;

    push_swtmr_registry_key(L);
    lua_rawget(L, L_REGISTRY);

    if(!lua_istable(L, -1)){

      lua_pop(L, 1);
      lua_newtable(L);

      push_swtmr_registry_key(L);
      lua_pushvalue(L, -2);
      lua_rawset(L, L_REGISTRY);
    }

    lua_pushstring(L, CB_LIST_STR);
    lua_rawget(L, -2);

    if(lua_istable(L, -1)){

      cb_list_last_idx = lua_objlen(L, -1);
    }
    else{

      lua_pop(L, 1);
      lua_newtable(L);
      lua_pushstring(L, CB_LIST_STR);
      lua_pushvalue(L, -2);
      lua_rawset(L, -4);
    }


    lua_pushnumber(L, cb_list_last_idx+1);
    cb_registry_item_t* reg_item = lua_newuserdata(L, sizeof(cb_registry_item_t));
    reg_item->tmr_cb_ptr = timer_cb_ptr;
    reg_item->suspend_policy = suspend_policy;
    lua_rawset(L, -3);


    lua_pop(L, 2);
  }
  return;
}
