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
typedef  char const u8 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char const) ; 
 int /*<<< orphan*/  uart ; 

__attribute__((used)) static int FUNC9( lua_State* L )
{
  int id;
  const char* buf;
  size_t len, i;
  int total = FUNC4( L ), s;

  id = FUNC1( L, 1 );
  FUNC0( uart, id );
  for( s = 2; s <= total; s ++ )
  {
    if( FUNC7( L, s ) == LUA_TNUMBER )
    {
      len = FUNC5( L, s );
      if( len > 255 )
        return FUNC3( L, "invalid number" );
      FUNC8( id, ( u8 )len );
    }
    else
    {
      FUNC2( L, s, LUA_TSTRING );
      buf = FUNC6( L, s, &len );
      for( i = 0; i < len; i ++ )
        FUNC8( id, buf[ i ] );
    }
  }
  return 0;
}