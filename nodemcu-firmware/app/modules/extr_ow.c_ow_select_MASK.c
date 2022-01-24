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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,char*) ; 
 int /*<<< orphan*/  ow ; 

__attribute__((used)) static int FUNC9( lua_State *L )
{
  uint8_t rom[8];
  size_t datalen;
  int numdata, i;
  unsigned id = FUNC1( L, 1 );
  const char *pdata;
  FUNC0( ow, id );

  if( FUNC4( L, 2 ) )
  {
    datalen = FUNC5( L, 2 );
    if (datalen!=8)
      return FUNC3( L, "wrong arg range" );
    for( i = 0; i < datalen; i ++ )
    {
      FUNC7( L, 2, i + 1 );
      numdata = ( int )FUNC1( L, -1 );
      FUNC6( L, 1 );
      if( numdata > 255 )
        return FUNC3( L, "wrong arg range" );
      rom[i] = (uint8_t)numdata;
    }
  }
  else
  {
    pdata = FUNC2( L, 2, &datalen );
    if (datalen!=8)
      return FUNC3( L, "wrong arg range" );
    for( i = 0; i < datalen; i ++ ){
      rom[i] = pdata[i];
    }
  }

  FUNC8(id, rom);
  return 0;
}