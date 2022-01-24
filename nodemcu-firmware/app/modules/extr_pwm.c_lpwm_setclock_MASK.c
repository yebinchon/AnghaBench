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
typedef  int /*<<< orphan*/  u32 ;
typedef  void* s32 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwm ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  unsigned id;
  s32 clk;	// signed to error-check for negative values

  id = FUNC1( L, 1 );
  FUNC0( pwm, id );
  clk = FUNC1( L, 2 );
  if ( clk <= 0 )
    return FUNC2( L, "wrong arg range" );
  clk = FUNC4( id, (u32)clk );
  FUNC3( L, clk );
  return 1;
}