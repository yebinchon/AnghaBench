#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  status; TYPE_9__* errorJmp; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_14__ {int status; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* panic ) (TYPE_1__*) ;} ;

/* Variables and functions */
 TYPE_10__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8 (lua_State *L, int errcode) {
  FUNC6(L); /* make sure the fixedstack & block_gc flags get reset. */
  FUNC7(L);
  if (L->errorJmp) {
    L->errorJmp->status = errcode;
    FUNC1(L, L->errorJmp);
  }
  else {
    L->status = FUNC2(errcode);
    if (FUNC0(L)->panic) {
      FUNC4(L, errcode);
      FUNC3(L);
      FUNC0(L)->panic(L);
    }
    // c_exit(EXIT_FAILURE);
  }
}