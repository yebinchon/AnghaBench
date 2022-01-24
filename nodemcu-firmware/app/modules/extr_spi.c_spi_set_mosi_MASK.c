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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  spi ; 
 int /*<<< orphan*/  FUNC7 (int,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9( lua_State *L )
{
  int id = FUNC2( L, 1 );

  FUNC0( spi, id );

  if (FUNC6( L, 2 ) == LUA_TSTRING) {
    size_t len;
    const char *data = FUNC3( L, 2, &len );
    FUNC1( L, 2, len <= 64, "out of range" );

    FUNC7( id, len * 8, data );

  } else {
    int offset = FUNC2( L, 2 );
    int bitlen = FUNC2( L, 3 );

    FUNC1( L, 2, offset >= 0 && offset <= 511, "out of range" );
    FUNC1( L, 3, bitlen >= 1 && bitlen <= 32, "out of range" );

    for (int argn = 4; argn <= FUNC5( L ); argn++, offset += bitlen ) {
      u32 data = ( u32 )FUNC2(L, argn );

      if (offset + bitlen > 512) {
        return FUNC4( L, "data range exceeded > 512 bits" );
      }

      FUNC8( id, offset, bitlen, data );
    }
  }

  return 0;
}