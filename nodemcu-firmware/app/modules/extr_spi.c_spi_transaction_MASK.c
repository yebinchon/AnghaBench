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
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  spi ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC4( lua_State *L )
{
  int id = FUNC2( L, 1 );

  FUNC0( spi, id );

  int cmd_bitlen = FUNC2( L, 2 );
  u16 cmd_data   = ( u16 )FUNC2( L, 3 );
  FUNC1( L, 2, cmd_bitlen >= 0 && cmd_bitlen <= 16, "out of range" );

  int addr_bitlen = FUNC2( L, 4 );
  u32 addr_data   = ( u32 )FUNC2( L, 5 );
  FUNC1( L, 4, addr_bitlen >= 0 && addr_bitlen <= 32, "out of range" );

  int mosi_bitlen = FUNC2( L, 6 );
  FUNC1( L, 6, mosi_bitlen >= 0 && mosi_bitlen <= 512, "out of range" );

  int dummy_bitlen = FUNC2( L, 7 );
  FUNC1( L, 7, dummy_bitlen >= 0 && dummy_bitlen <= 256, "out of range" );

  int miso_bitlen = FUNC2( L, 8 );
  FUNC1( L, 8, miso_bitlen >= -512 && miso_bitlen <= 512, "out of range" );

  FUNC3( id, cmd_bitlen, cmd_data, addr_bitlen, addr_data,
			mosi_bitlen, dummy_bitlen, miso_bitlen );

  return 0;
}