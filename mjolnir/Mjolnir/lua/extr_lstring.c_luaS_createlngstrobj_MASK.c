#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {int /*<<< orphan*/  seed; } ;
struct TYPE_6__ {size_t lnglen; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef  TYPE_2__ TString ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LUA_TLNGSTR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TString *FUNC2 (lua_State *L, size_t l) {
  TString *ts = FUNC1(L, l, LUA_TLNGSTR, FUNC0(L)->seed);
  ts->u.lnglen = l;
  return ts;
}