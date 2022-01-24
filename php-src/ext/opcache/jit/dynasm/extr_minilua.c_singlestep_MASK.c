#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lu_mem ;
typedef  int l_mem ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/ * hash; } ;
struct TYPE_6__ {int gcstate; int totalbytes; int estimate; int /*<<< orphan*/  gcdept; int /*<<< orphan*/  tmudata; int /*<<< orphan*/ ** sweepgc; TYPE_1__ strt; int /*<<< orphan*/  sweepstrgc; int /*<<< orphan*/  gray; } ;
typedef  TYPE_2__ global_State ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static l_mem FUNC8(lua_State*L){
global_State*g=FUNC0(L);
switch(g->gcstate){
case 0:{
FUNC4(L);
return 0;
}
case 1:{
if(g->gray)
return FUNC5(g);
else{
FUNC2(L);
return 0;
}
}
case 2:{
lu_mem old=g->totalbytes;
FUNC7(L,&g->strt.hash[g->sweepstrgc++]);
if(g->sweepstrgc>=g->strt.size)
g->gcstate=3;
g->estimate-=old-g->totalbytes;
return 10;
}
case 3:{
lu_mem old=g->totalbytes;
g->sweepgc=FUNC6(L,g->sweepgc,40);
if(*g->sweepgc==NULL){
FUNC3(L);
g->gcstate=4;
}
g->estimate-=old-g->totalbytes;
return 40*10;
}
case 4:{
if(g->tmudata){
FUNC1(L);
if(g->estimate>100)
g->estimate-=100;
return 100;
}
else{
g->gcstate=0;
g->gcdept=0;
return 0;
}
}
default:return 0;
}
}