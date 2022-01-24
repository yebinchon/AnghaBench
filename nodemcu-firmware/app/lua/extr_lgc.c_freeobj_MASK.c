#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_15__ {int /*<<< orphan*/  gch; } ;
struct TYPE_14__ {int /*<<< orphan*/  nuse; } ;
struct TYPE_13__ {TYPE_1__ strt; int /*<<< orphan*/ * mainthread; } ;
typedef  TYPE_2__ GCObject ;

/* Variables and functions */
 TYPE_12__* FUNC0 (int /*<<< orphan*/ *) ; 
#define  LUA_TFUNCTION 134 
#define  LUA_TPROTO 133 
#define  LUA_TSTRING 132 
#define  LUA_TTABLE 131 
#define  LUA_TTHREAD 130 
#define  LUA_TUPVAL 129 
#define  LUA_TUSERDATA 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19 (lua_State *L, GCObject *o) {
  switch (FUNC8(&o->gch)) {
    case LUA_TPROTO:
      FUNC16(!FUNC9(&(o->gch)));
      FUNC12(L, FUNC3(o));
      break;
    case LUA_TFUNCTION: FUNC11(L, FUNC1(o)); break;
    case LUA_TUPVAL: FUNC13(L, FUNC7(o)); break;
    case LUA_TTABLE: FUNC14(L, FUNC2(o)); break;
    case LUA_TTHREAD: {
      FUNC16(FUNC4(o) != L && FUNC4(o) != FUNC0(L)->mainthread);
      FUNC10(L, FUNC4(o));
      break;
    }
    case LUA_TSTRING: {
      FUNC16(!FUNC9(&(o->gch)));
      FUNC0(L)->strt.nuse--;
      FUNC15(L, o, FUNC17(FUNC5(o)));
      break;
    }
    case LUA_TUSERDATA: {
      FUNC15(L, o, FUNC18(FUNC6(o)));
      break;
    }
    default: FUNC16(0);
  }
}