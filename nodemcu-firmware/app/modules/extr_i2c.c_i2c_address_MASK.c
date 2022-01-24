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
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  i2c ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5( lua_State *L )
{
  unsigned id = FUNC1( L, 1 );
  int address = FUNC1( L, 2 );
  int direction = FUNC1( L, 3 );

  FUNC0( i2c, id );
  if ( address < 0 || address > 127 )
    return FUNC2( L, "wrong arg range" );
  FUNC3( L, FUNC4( id, (u16)address, direction ) );
  return 1;
}