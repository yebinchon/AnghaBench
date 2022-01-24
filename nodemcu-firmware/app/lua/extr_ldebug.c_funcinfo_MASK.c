#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* source; int linedefined; int lastlinedefined; char* what; int /*<<< orphan*/  short_src; } ;
typedef  TYPE_4__ lua_Debug ;
struct TYPE_10__ {TYPE_2__* p; } ;
struct TYPE_8__ {scalar_t__ isC; } ;
struct TYPE_12__ {TYPE_3__ l; TYPE_1__ c; } ;
struct TYPE_9__ {int linedefined; int lastlinedefined; int /*<<< orphan*/  source; } ;
typedef  TYPE_5__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_IDSIZE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (lua_Debug *ar, Closure *cl, void *plight) {
  if (plight || cl->c.isC) {
    ar->source = "=[C]";
    ar->linedefined = -1;
    ar->lastlinedefined = -1;
    ar->what = "C";
  }
  else {
    ar->source = FUNC0(cl->l.p->source);
    ar->linedefined = cl->l.p->linedefined;
    ar->lastlinedefined = cl->l.p->lastlinedefined;
    ar->what = (ar->linedefined == 0) ? "main" : "Lua";
  }
  FUNC1(ar->short_src, ar->source, LUA_IDSIZE);
}