#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_4__ lua_State ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_13__ {TYPE_1__* p; } ;
struct TYPE_14__ {scalar_t__ isC; } ;
struct TYPE_16__ {TYPE_2__ l; TYPE_3__ c; } ;
struct TYPE_12__ {int* lineinfo; int sizelineinfo; } ;
typedef  TYPE_5__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(lua_State*L,Closure*f){
if(f==NULL||f->c.isC){
FUNC5(L->top);
}
else{
Table*t=FUNC1(L,0,0);
int*lineinfo=f->l.p->lineinfo;
int i;
for(i=0;i<f->l.p->sizelineinfo;i++)
FUNC3(FUNC2(L,t,lineinfo[i]),1);
FUNC4(L,L->top,t);
}
FUNC0(L);
}