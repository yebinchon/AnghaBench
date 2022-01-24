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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  spi ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 

__attribute__((used)) static int FUNC9( lua_State *L )
{
  int id = FUNC2( L, 1 );

  FUNC0( spi, id );

  if (FUNC4( L ) == 2) {
    uint8_t data[64];
    int len = FUNC2( L, 2 );

    FUNC1( L, 2, len >= 1 && len <= 64, "out of range" );

    FUNC7( id, len * 8, data );

    FUNC6( L, data, len );
    return 1;

  } else {
    int offset = FUNC2( L, 2 );
    int bitlen = FUNC2( L, 3 );
    int num    = FUNC2( L, 4 ), i;

    FUNC1( L, 2, offset >= 0 && offset <= 511, "out of range" );
    FUNC1( L, 3, bitlen >= 1 && bitlen <= 32, "out of range" );

    if (offset + bitlen * num > 512) {
      return FUNC3( L, "out of range" );
    }

    for (i = 0; i < num; i++) {
      FUNC5( L, FUNC8( id, offset + (bitlen * i), bitlen ) );
    }
    return num;
  }
}