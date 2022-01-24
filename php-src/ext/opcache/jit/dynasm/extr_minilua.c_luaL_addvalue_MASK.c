#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {size_t p; int /*<<< orphan*/  lvl; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,char const*,size_t) ; 

__attribute__((used)) static void FUNC7(luaL_Buffer*B){
lua_State*L=B->L;
size_t vl;
const char*s=FUNC5(L,-1,&vl);
if(vl<=FUNC1(B)){
FUNC6(B->p,s,vl);
B->p+=vl;
FUNC4(L,1);
}
else{
if(FUNC2(B))
FUNC3(L,-2);
B->lvl++;
FUNC0(B);
}
}