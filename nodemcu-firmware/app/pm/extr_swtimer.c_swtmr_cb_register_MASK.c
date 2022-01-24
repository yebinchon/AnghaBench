#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  suspend_policy; void* tmr_cb_ptr; } ;
typedef  TYPE_1__ cb_registry_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  CB_LIST_STR ; 
 int L_REGISTRY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(void* timer_cb_ptr, uint8 suspend_policy){
  lua_State* L = FUNC1();
  if(!L){
    //Lua has not started yet, therefore L_REGISTRY is not available.
    //add timer cb to queue for later processing after Lua has started
    FUNC0(timer_cb_ptr, suspend_policy);
    return;
  }
  if(timer_cb_ptr){
    size_t cb_list_last_idx = 0;

    FUNC12(L);
    FUNC10(L, L_REGISTRY);

    if(!FUNC2(L, -1)){
      //swtmr does not exist, create and add to registry
      FUNC6(L, 1);
      FUNC3(L);//push new table for swtmr.timer_cb_list
      // add swtimer table to L_REGISTRY
      FUNC12(L);
      FUNC9(L, -2);
      FUNC11(L, L_REGISTRY);
    }

    FUNC8(L, CB_LIST_STR);
    FUNC10(L, -2);

    if(FUNC2(L, -1)){
      //cb_list exists, get length of list
      cb_list_last_idx = FUNC5(L, -1);
    }
    else{
      //cb_list does not exist in swtmr, create and add to swtmr
      FUNC6(L, 1);// pop nil value from stack
      FUNC3(L);//create new table for swtmr.timer_cb_list
      FUNC8(L, CB_LIST_STR); //push name for the new table onto the stack
      FUNC9(L, -2); //push table to top of stack
      FUNC11(L, -4); //pop table and name from stack and register in swtmr
    }

    //append new timer cb ptr to table
    FUNC7(L, cb_list_last_idx+1);
    cb_registry_item_t* reg_item = FUNC4(L, sizeof(cb_registry_item_t));
    reg_item->tmr_cb_ptr = timer_cb_ptr;
    reg_item->suspend_policy = suspend_policy;
    FUNC11(L, -3);

    //clear items pushed onto stack by this function
    FUNC6(L, 2);
  }
  return;
}