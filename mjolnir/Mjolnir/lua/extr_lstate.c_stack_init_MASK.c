#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int func; int top; scalar_t__ callstatus; int /*<<< orphan*/ * previous; int /*<<< orphan*/  next; } ;
struct TYPE_6__ {int stack; int stacksize; int top; int stack_last; TYPE_2__* ci; TYPE_2__ base_ci; } ;
typedef  TYPE_1__ lua_State ;
typedef  TYPE_2__ CallInfo ;

/* Variables and functions */
 int BASIC_STACK_SIZE ; 
 int EXTRA_STACK ; 
 int LUA_MINSTACK ; 
 int /*<<< orphan*/  TValue ; 
 int FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2 (lua_State *L1, lua_State *L) {
  int i; CallInfo *ci;
  /* initialize stack array */
  L1->stack = FUNC0(L, BASIC_STACK_SIZE, TValue);
  L1->stacksize = BASIC_STACK_SIZE;
  for (i = 0; i < BASIC_STACK_SIZE; i++)
    FUNC1(L1->stack + i);  /* erase new stack */
  L1->top = L1->stack;
  L1->stack_last = L1->stack + L1->stacksize - EXTRA_STACK;
  /* initialize first ci */
  ci = &L1->base_ci;
  ci->next = *(ci->previous = NULL);
  ci->callstatus = 0;
  ci->func = L1->top;
  FUNC1(L1->top++);  /* 'function' entry for this 'ci' */
  ci->top = L1->top + LUA_MINSTACK;
  L1->ci = ci;
}