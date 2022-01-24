#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_5__ {int nupvalues; int /*<<< orphan*/ * upvals; int /*<<< orphan*/  p; } ;
struct TYPE_6__ {int nupvalues; int /*<<< orphan*/ * upvalue; scalar_t__ isC; int /*<<< orphan*/  env; } ;
struct TYPE_7__ {TYPE_1__ l; TYPE_2__ c; } ;
typedef  TYPE_3__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(global_State*g,Closure*cl){
FUNC0(g,cl->c.env);
if(cl->c.isC){
int i;
for(i=0;i<cl->c.nupvalues;i++)
FUNC1(g,&cl->c.upvalue[i]);
}
else{
int i;
FUNC0(g,cl->l.p);
for(i=0;i<cl->l.nupvalues;i++)
FUNC0(g,cl->l.upvals[i]);
}
}