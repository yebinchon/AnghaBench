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
typedef  int u32 ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  i2c ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned int,int) ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
  unsigned id = FUNC3( L, 1 );
  u32 size = ( u32 )FUNC3( L, 2 ), i;
  luaL_Buffer b;
  int data;

  FUNC0( i2c, id );
  if( size == 0 )
    return 0;
  FUNC2( L, &b );
  for( i = 0; i < size; i ++ )
    if( ( data = FUNC5( id, i < size - 1 ) ) == -1 )
      break;
    else
      FUNC1( &b, ( char )data );
  FUNC4( &b );
  return 1;
}