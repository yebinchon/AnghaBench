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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  spi ; 
 int /*<<< orphan*/ * spi_databits ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
  int id   = FUNC3( L, 1 );
  int size = FUNC3( L, 2 ), i;
  int def  = FUNC4( L, 3, 0xffffffff );

  luaL_Buffer b;

  FUNC0( spi, id );
  if (size == 0) {
    return 0;
  }

  FUNC2( L, &b );
  for (i=0; i<size; i++)
  {
    FUNC1( &b, ( char )FUNC6( id, spi_databits[id], def ) );
  }

  FUNC5( &b );
  return 1;
}