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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  i2c ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,unsigned int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC11 (unsigned int,char const) ; 

__attribute__((used)) static int FUNC12( lua_State *L )
{
  unsigned id = FUNC1( L, 1 );
  const char *pdata;
  size_t datalen, i;
  int numdata;
  u32 wrote = 0;
  unsigned argn;

  FUNC0( i2c, id );
  if( FUNC4( L ) < 2 )
    return FUNC3( L, "wrong arg type" );
  for( argn = 2; argn <= FUNC4( L ); argn ++ )
  {
    // lua_isnumber() would silently convert a string of digits to an integer
    // whereas here strings are handled separately.
    if( FUNC10( L, argn ) == LUA_TNUMBER )
    {
      numdata = ( int )FUNC1( L, argn );
      if( numdata < 0 || numdata > 255 )
        return FUNC3( L, "wrong arg range" );
      if( FUNC11( id, numdata ) != 1 )
        break;
      wrote ++;
    }
    else if( FUNC5( L, argn ) )
    {
      datalen = FUNC6( L, argn );
      for( i = 0; i < datalen; i ++ )
      {
        FUNC9( L, argn, i + 1 );
        numdata = ( int )FUNC1( L, -1 );
        FUNC7( L, 1 );
        if( numdata < 0 || numdata > 255 )
          return FUNC3( L, "wrong arg range" );
        if( FUNC11( id, numdata ) == 0 )
          break;
      }
      wrote += i;
      if( i < datalen )
        break;
    }
    else
    {
      pdata = FUNC2( L, argn, &datalen );
      for( i = 0; i < datalen; i ++ )
        if( FUNC11( id, pdata[ i ] ) == 0 )
          break;
      wrote += i;
      if( i < datalen )
        break;
    }
  }
  FUNC8( L, wrote );
  return 1;
}