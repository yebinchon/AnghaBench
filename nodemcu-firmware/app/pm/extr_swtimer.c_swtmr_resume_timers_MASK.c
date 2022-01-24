#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_4__ {scalar_t__ volatile timer_expire; struct TYPE_4__* timer_next; } ;
typedef  TYPE_1__ os_timer_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FRC2_COUNT_ADDRESS ; 
 int L_REGISTRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUSP_LIST_STR ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* timer_list ; 

void FUNC11(){
  lua_State* L = FUNC1();

  //get swtimer table
  FUNC10(L);
  FUNC7(L, L_REGISTRY);

  //get suspended_timer_list lightuserdata
  FUNC6(L, SUSP_LIST_STR);
  FUNC7(L, -2);

  //check for existence of swtimer table and the suspended_timer_list pointer userdata, return if not found
  if(!FUNC2(L, -2) || !FUNC3(L, -1)){
    // not necessarily an error maybe there are legitimately no timers to resume
    FUNC4(L, 2);
    return;
  }

  os_timer_t* suspended_timer_list_ptr = FUNC9(L, -1);
  FUNC4(L, 1); //pop suspended timer list userdata from stack

  //since timers will be resumed, the suspended_timer_list lightuserdata can be cleared from swtimer table
  FUNC6(L, SUSP_LIST_STR);
  FUNC5(L);
  FUNC8(L, -3);


  FUNC4(L, 1); //pop swtimer table from stack

  volatile uint32 frc2_count = FUNC0(FRC2_COUNT_ADDRESS);

  //this section does the actual resuming of the suspended timer(s)
  while(suspended_timer_list_ptr != NULL){
    os_timer_t* timer_list_ptr = timer_list;

    //the pointer to next suspended timer must be saved, the current suspended timer will be removed from the list
    os_timer_t* next_suspended_timer_ptr = suspended_timer_list_ptr->timer_next;

    suspended_timer_list_ptr->timer_expire += frc2_count;

    //traverse timer_list to determine where to insert suspended timer
    while(timer_list_ptr != NULL){
      if(suspended_timer_list_ptr->timer_expire > timer_list_ptr->timer_expire){
        if(timer_list_ptr->timer_next != NULL){
          //current timer is not at tail of timer_list
          if(suspended_timer_list_ptr->timer_expire < timer_list_ptr->timer_next->timer_expire){
            //insert suspended timer between current timer and next timer
            suspended_timer_list_ptr->timer_next = timer_list_ptr->timer_next;
            timer_list_ptr->timer_next = suspended_timer_list_ptr;
            break; //timer resumed exit while loop
          }
          else{
            //suspended timer expire is larger than next timer
          }
        }
        else{
          //current timer is at tail of timer_list and suspended timer expire is greater then current timer
          //append timer to end of timer_list
          timer_list_ptr->timer_next = suspended_timer_list_ptr;
          suspended_timer_list_ptr->timer_next = NULL;
          break; //timer resumed exit while loop
        }
      }
      else if(timer_list_ptr == timer_list){
        //insert timer at head of list
        suspended_timer_list_ptr->timer_next = timer_list_ptr;
        timer_list = timer_list_ptr = suspended_timer_list_ptr;
        break; //timer resumed exit while loop
      }
      //suspended timer expire is larger than next timer
      //timer not resumed, next timer in timer_list
      timer_list_ptr = timer_list_ptr->timer_next;
    }
    //timer was resumed, next suspended timer
    suspended_timer_list_ptr = next_suspended_timer_ptr;
  }
  return;
}