#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_16__ {scalar_t__ gcstate; } ;
typedef  TYPE_2__ global_State ;
struct TYPE_15__ {scalar_t__ tt; } ;
struct TYPE_17__ {TYPE_1__ gch; } ;
typedef  TYPE_3__ GCObject ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GCSfinalize ; 
 scalar_t__ GCSpause ; 
 scalar_t__ GCSpropagate ; 
 scalar_t__ LUA_TTABLE ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 

void FUNC7 (lua_State *L, GCObject *o, GCObject *v) {
  global_State *g = FUNC0(L);
  FUNC4(FUNC1(o) && FUNC3(v) && !FUNC2(g, v) && !FUNC2(g, o));
  FUNC4(g->gcstate != GCSfinalize && g->gcstate != GCSpause);
  FUNC4(o->gch.tt != LUA_TTABLE);
  /* must keep invariant? */
  if (g->gcstate == GCSpropagate)
    FUNC6(g, v);  /* Restore invariant */
  else  /* don't mind */
    FUNC5(g, o);  /* mark as white just to avoid other barriers */
}