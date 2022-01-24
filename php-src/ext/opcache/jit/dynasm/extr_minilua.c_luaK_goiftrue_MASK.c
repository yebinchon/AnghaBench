#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int info; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct TYPE_10__ {int k; int t; int /*<<< orphan*/  f; TYPE_2__ u; } ;
typedef  TYPE_3__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
#define  VJMP 131 
#define  VK 130 
#define  VKNUM 129 
#define  VTRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(FuncState*fs,expdesc*e){
int pc;
FUNC3(fs,e);
switch(e->k){
case VK:case VKNUM:case VTRUE:{
pc=(-1);
break;
}
case VJMP:{
FUNC0(fs,e);
pc=e->u.s.info;
break;
}
default:{
pc=FUNC1(fs,e,0);
break;
}
}
FUNC2(fs,&e->f,pc);
FUNC4(fs,e->t);
e->t=(-1);
}