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
typedef  int uint8 ;
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7( lua_State* L )
{
  uint64 us;
  uint8 option;
  //us = luaL_checkinteger( L, 1 );
  // Set deleep option, skip if nil
  if ( FUNC2(L, 2) )
  {
    option = FUNC3(L, 2);
    if ( option < 0 || option > 4)
      return FUNC1( L, "wrong arg range" );
    else
      FUNC6( option );
  }
  bool instant = false;
  if (FUNC2(L, 3))
    instant = FUNC3(L, 3);
  // Set deleep time, skip if nil
  if ( FUNC2(L, 1) )
  {
    us = FUNC0(L, 1);
    // if ( us <= 0 )
    if ( us < 0 )
      return FUNC1( L, "wrong arg range" );
    else
    {
      if (instant)
        FUNC5(us);
      else
        FUNC4( us );
    }
  }
  return 0;
}