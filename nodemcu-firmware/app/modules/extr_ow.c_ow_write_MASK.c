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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ow ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
  int power = 0;
  unsigned id = FUNC1( L, 1 );
  FUNC0( ow, id );

  int v = (int)FUNC1( L, 2 );
  if( v > 255 )
    return FUNC2( L, "wrong arg range" );
  if(FUNC3(L, 3))
    power = FUNC4(L, 3);
  if(power!=0)
    power = 1;

  FUNC5((uint8_t)id, (uint8_t)v, (uint8_t)power);

  return 0;
}