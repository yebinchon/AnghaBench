#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_12__ {scalar_t__ tt; } ;
struct TYPE_14__ {TYPE_1__ tsv; } ;
typedef  TYPE_3__ TString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(lua_State *L, TString *ts) {
  FUNC2(ts->tsv.tt==LUA_TSTRING);
  FUNC4(L);
  FUNC6(L, L->top-1, ts);
  FUNC3(L, 1);
  FUNC5(L, -3);
  FUNC0("Adding string: %s\n",FUNC1(ts));
}