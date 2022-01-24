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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 unsigned int HIGH ; 
 unsigned int LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  gpio ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4( lua_State* L )
{
  unsigned pin = FUNC2( L, 1 );
  unsigned level = FUNC2( L, 2 );

  FUNC0( gpio, pin );
  FUNC1(L, level==HIGH || level==LOW, 2, "wrong level type" );

  FUNC3(pin, level);
  return 0;
}