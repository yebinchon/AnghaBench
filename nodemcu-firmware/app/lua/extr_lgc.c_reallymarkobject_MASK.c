#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_25__ ;
typedef  struct TYPE_31__   TYPE_23__ ;
typedef  struct TYPE_30__   TYPE_21__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_19__ ;
typedef  struct TYPE_27__   TYPE_17__ ;

/* Type definitions */
struct TYPE_34__ {TYPE_5__* gray; } ;
typedef  TYPE_3__ global_State ;
struct TYPE_29__ {int /*<<< orphan*/  value; } ;
struct TYPE_35__ {TYPE_1__ u; int /*<<< orphan*/ * v; } ;
typedef  TYPE_4__ UpVal ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_36__ {int /*<<< orphan*/  gch; } ;
struct TYPE_33__ {TYPE_5__* gclist; } ;
struct TYPE_32__ {TYPE_2__ c; } ;
struct TYPE_31__ {TYPE_5__* gclist; } ;
struct TYPE_30__ {TYPE_5__* gclist; } ;
struct TYPE_28__ {TYPE_5__* gclist; } ;
struct TYPE_27__ {int /*<<< orphan*/ * env; int /*<<< orphan*/ * metatable; } ;
typedef  TYPE_5__ GCObject ;

/* Variables and functions */
#define  LUA_TFUNCTION 134 
#define  LUA_TPROTO 133 
#define  LUA_TSTRING 132 
#define  LUA_TTABLE 131 
#define  LUA_TTHREAD 130 
#define  LUA_TUPVAL 129 
#define  LUA_TUSERDATA 128 
 TYPE_25__* FUNC0 (TYPE_5__*) ; 
 TYPE_23__* FUNC1 (TYPE_5__*) ; 
 TYPE_21__* FUNC2 (TYPE_5__*) ; 
 TYPE_19__* FUNC3 (TYPE_5__*) ; 
 TYPE_17__* FUNC4 (TYPE_5__*) ; 
 TYPE_4__* FUNC5 (TYPE_5__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC16 (global_State *g, GCObject *o) {
  /* don't mark LFS Protos (or strings) */
  if (FUNC6(&o->gch) == LUA_TPROTO && FUNC8(&(o->gch)))
    return;

  FUNC12(FUNC10(o) && !FUNC9(g, o));
  FUNC15(o);
  switch (FUNC6(&o->gch)) {
    case LUA_TSTRING: {
      return;
    }
    case LUA_TUSERDATA: {
      Table *mt = FUNC4(o)->metatable;
      FUNC7(o);  /* udata are never gray */
      if (mt && !FUNC11(mt)) FUNC13(g, mt);
      FUNC13(g, FUNC4(o)->env);
      return;
    }
    case LUA_TUPVAL: {
      UpVal *uv = FUNC5(o);
      FUNC14(g, uv->v);
      if (uv->v == &uv->u.value)  /* closed? */
        FUNC7(o);  /* open upvalues are never black */
      return;
    }
    case LUA_TFUNCTION: {
      FUNC0(o)->c.gclist = g->gray;
      g->gray = o;
      break;
    }
    case LUA_TTABLE: {
      FUNC1(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    case LUA_TTHREAD: {
      FUNC3(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    case LUA_TPROTO: {
      FUNC2(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    default: FUNC12(0);
  }
}