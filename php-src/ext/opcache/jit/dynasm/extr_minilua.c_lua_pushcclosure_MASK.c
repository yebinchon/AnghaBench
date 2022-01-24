#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  lua_CFunction ;
struct TYPE_14__ {int /*<<< orphan*/ * upvalue; int /*<<< orphan*/  f; } ;
struct TYPE_16__ {TYPE_1__ c; } ;
typedef  TYPE_3__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC7(lua_State*L,lua_CFunction fn,int n){
Closure*cl;
FUNC3(L);
FUNC0(L,n);
cl=FUNC4(L,n,FUNC2(L));
cl->c.f=fn;
L->top-=n;
while(n--)
FUNC6(L,&cl->c.upvalue[n],L->top+n);
FUNC5(L,L->top,cl);
FUNC1(L);
}