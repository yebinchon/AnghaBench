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
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  gpio ; 
 int /*<<< orphan*/  i2c ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( lua_State *L )
{
  unsigned id = FUNC1( L, 1 );
  unsigned sda = FUNC1( L, 2 );
  unsigned scl = FUNC1( L, 3 );

  FUNC0( i2c, id );
  FUNC0( gpio, sda );
  FUNC0( gpio, scl );

  if ( sda == 0 )
    return FUNC2( L, "i2c SDA on D0 is not supported" );

  s32 speed = ( s32 )FUNC1( L, 4 );
  if ( speed <= 0 )
    return FUNC2( L, "wrong arg range" );
  speed = FUNC4( id, sda, scl, (u32)speed );
  if ( speed == 0 )
    return FUNC2( L, "failed to initialize i2c %d", id );
  FUNC3( L, speed );
  return 1;
}