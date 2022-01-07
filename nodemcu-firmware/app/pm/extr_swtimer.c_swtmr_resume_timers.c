
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {scalar_t__ volatile timer_expire; struct TYPE_4__* timer_next; } ;
typedef TYPE_1__ os_timer_t ;
typedef int lua_State ;


 int FRC2_COUNT_ADDRESS ;
 int L_REGISTRY ;
 scalar_t__ RTC_REG_READ (int ) ;
 int SUSP_LIST_STR ;
 int * lua_getstate () ;
 int lua_istable (int *,int) ;
 int lua_isuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;
 TYPE_1__* lua_touserdata (int *,int) ;
 int push_swtmr_registry_key (int *) ;
 TYPE_1__* timer_list ;

void swtmr_resume_timers(){
  lua_State* L = lua_getstate();


  push_swtmr_registry_key(L);
  lua_rawget(L, L_REGISTRY);


  lua_pushstring(L, SUSP_LIST_STR);
  lua_rawget(L, -2);


  if(!lua_istable(L, -2) || !lua_isuserdata(L, -1)){

    lua_pop(L, 2);
    return;
  }

  os_timer_t* suspended_timer_list_ptr = lua_touserdata(L, -1);
  lua_pop(L, 1);


  lua_pushstring(L, SUSP_LIST_STR);
  lua_pushnil(L);
  lua_rawset(L, -3);


  lua_pop(L, 1);

  volatile uint32 frc2_count = RTC_REG_READ(FRC2_COUNT_ADDRESS);


  while(suspended_timer_list_ptr != ((void*)0)){
    os_timer_t* timer_list_ptr = timer_list;


    os_timer_t* next_suspended_timer_ptr = suspended_timer_list_ptr->timer_next;

    suspended_timer_list_ptr->timer_expire += frc2_count;


    while(timer_list_ptr != ((void*)0)){
      if(suspended_timer_list_ptr->timer_expire > timer_list_ptr->timer_expire){
        if(timer_list_ptr->timer_next != ((void*)0)){

          if(suspended_timer_list_ptr->timer_expire < timer_list_ptr->timer_next->timer_expire){

            suspended_timer_list_ptr->timer_next = timer_list_ptr->timer_next;
            timer_list_ptr->timer_next = suspended_timer_list_ptr;
            break;
          }
          else{

          }
        }
        else{


          timer_list_ptr->timer_next = suspended_timer_list_ptr;
          suspended_timer_list_ptr->timer_next = ((void*)0);
          break;
        }
      }
      else if(timer_list_ptr == timer_list){

        suspended_timer_list_ptr->timer_next = timer_list_ptr;
        timer_list = timer_list_ptr = suspended_timer_list_ptr;
        break;
      }


      timer_list_ptr = timer_list_ptr->timer_next;
    }

    suspended_timer_list_ptr = next_suspended_timer_ptr;
  }
  return;
}
