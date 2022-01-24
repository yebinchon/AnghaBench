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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int PLATFORM_SPI_CPHA_HIGH ; 
 int PLATFORM_SPI_CPHA_LOW ; 
 int PLATFORM_SPI_CPOL_HIGH ; 
 int PLATFORM_SPI_CPOL_LOW ; 
 int PLATFORM_SPI_MASTER ; 
 int PLATFORM_SPI_SLAVE ; 
 int SPI_FULLDUPLEX ; 
 int SPI_HALFDUPLEX ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int,int,int,int,int) ; 
 int /*<<< orphan*/  spi ; 
 int* spi_databits ; 
 int* spi_duplex ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
  int id          = FUNC1( L, 1 );
  int mode        = FUNC1( L, 2 );
  int cpol        = FUNC1( L, 3 );
  int cpha        = FUNC1( L, 4 );
  int databits    = FUNC1( L, 5 );
  u32 clock_div   = FUNC1( L, 6 );
  int duplex_mode = FUNC3( L, 7, SPI_HALFDUPLEX );

  FUNC0( spi, id );

  if (mode != PLATFORM_SPI_SLAVE && mode != PLATFORM_SPI_MASTER) {
    return FUNC2( L, "wrong arg type" );
  }

  if (cpol != PLATFORM_SPI_CPOL_LOW && cpol != PLATFORM_SPI_CPOL_HIGH) {
    return FUNC2( L, "wrong arg type" );
  }

  if (cpha != PLATFORM_SPI_CPHA_LOW && cpha != PLATFORM_SPI_CPHA_HIGH) {
    return FUNC2( L, "wrong arg type" );
  }

  if (databits < 0 || databits > 32) {
    return FUNC2( L, "out of range" );
  }

  if (clock_div == 0) {
    // defaulting to 8 for backward compatibility
    clock_div = 8;
  }

  if (duplex_mode == SPI_HALFDUPLEX || duplex_mode == SPI_FULLDUPLEX)
  {
    spi_duplex[id] = duplex_mode;
  }
  else
  {
    return FUNC2( L, "out of range" );
  }

  spi_databits[id] = databits;

  u32 res = FUNC5(id, mode, cpol, cpha, clock_div);
  FUNC4( L, res );
  return 1;
}