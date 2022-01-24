#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int gcstate; scalar_t__ totalbytes; scalar_t__ estimate; int /*<<< orphan*/  rootgc; int /*<<< orphan*/ * sweepgc; scalar_t__ sweepstrgc; int /*<<< orphan*/  currentwhite; int /*<<< orphan*/ * weak; int /*<<< orphan*/ * grayagain; int /*<<< orphan*/ * gray; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(lua_State*L){
global_State*g=FUNC0(L);
size_t udsize;
FUNC9(g);
FUNC8(g);
g->gray=g->weak;
g->weak=NULL;
FUNC5(g,L);
FUNC4(g);
FUNC8(g);
g->gray=g->grayagain;
g->grayagain=NULL;
FUNC8(g);
udsize=FUNC3(L,0);
FUNC6(g);
udsize+=FUNC8(g);
FUNC2(g->weak);
g->currentwhite=FUNC1(FUNC7(g));
g->sweepstrgc=0;
g->sweepgc=&g->rootgc;
g->gcstate=2;
g->estimate=g->totalbytes-udsize;
}