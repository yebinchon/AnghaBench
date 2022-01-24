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
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_9__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  scalar_t__ StkId ;

/* Variables and functions */
 int /*<<< orphan*/  TM_CALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static StkId FUNC7(lua_State*L,StkId func){
const TValue*tm=FUNC2(L,func,TM_CALL);
StkId p;
ptrdiff_t funcr=FUNC4(L,func);
if(!FUNC6(tm))
FUNC1(L,func,"call");
for(p=L->top;p>func;p--)FUNC5(L,p,p-1);
FUNC0(L);
func=FUNC3(L,funcr);
FUNC5(L,func,tm);
return func;
}