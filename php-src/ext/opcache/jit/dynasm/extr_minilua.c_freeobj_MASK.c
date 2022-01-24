#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_15__ {int tt; } ;
struct TYPE_17__ {TYPE_1__ gch; } ;
struct TYPE_16__ {int /*<<< orphan*/  nuse; } ;
struct TYPE_14__ {TYPE_2__ strt; } ;
typedef  TYPE_3__ GCObject ;

/* Variables and functions */
 TYPE_13__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(lua_State*L,GCObject*o){
switch(o->gch.tt){
case(8+1):FUNC10(L,FUNC3(o));break;
case 6:FUNC9(L,FUNC1(o));break;
case(8+2):FUNC11(L,FUNC7(o));break;
case 5:FUNC12(L,FUNC2(o));break;
case 8:{
FUNC8(L,FUNC4(o));
break;
}
case 4:{
FUNC0(L)->strt.nuse--;
FUNC13(L,o,FUNC14(FUNC5(o)));
break;
}
case 7:{
FUNC13(L,o,FUNC15(FUNC6(o)));
break;
}
default:;
}
}