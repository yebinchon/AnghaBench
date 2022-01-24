#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int sint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4( lua_State* L ){
	sint32_t us = FUNC0(L, 1);
	if(us <= 0)
		return FUNC1(L, "wrong arg range");
	while(us >= 1000000){
		us -= 1000000;
		FUNC2(1000000);
		FUNC3 ();
	}
	if(us>0){
		FUNC2(us);
		FUNC3 ();
	}
	return 0;
}