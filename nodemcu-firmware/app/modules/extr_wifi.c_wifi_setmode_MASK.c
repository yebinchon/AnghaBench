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
 int /*<<< orphan*/  LUA_TBOOLEAN ; 
 unsigned int NULL_MODE ; 
 unsigned int SOFTAP_MODE ; 
 unsigned int STATIONAP_MODE ; 
 unsigned int STATION_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11( lua_State* L )
{
  unsigned mode;
  bool save_to_flash=true;
  mode = FUNC1( L, 1 );
  FUNC0(L, mode == STATION_MODE || mode == SOFTAP_MODE || mode == STATIONAP_MODE || mode == NULL_MODE, 1, "Invalid mode");

  if(!FUNC4(L, 2))
  {
    if(!FUNC3(L, 2))
    {
      FUNC2(L, 2, FUNC7(L, LUA_TBOOLEAN));
    }
    save_to_flash=FUNC6(L, 2);
  }

  if(save_to_flash)
  {
    FUNC9( (uint8_t)mode);
  }
  else
  {
    FUNC10( (uint8_t)mode);
  }

  mode = (unsigned)FUNC8();
  FUNC5( L, mode );
  return 1;
}