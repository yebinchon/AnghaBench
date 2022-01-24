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
 unsigned int PHY_MODE_11B ; 
 unsigned int PHY_MODE_11G ; 
 unsigned int PHY_MODE_11N ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  unsigned mode;

  mode = FUNC0( L, 1 );

  if ( mode != PHY_MODE_11B && mode != PHY_MODE_11G && mode != PHY_MODE_11N )
    return FUNC1( L, "wrong arg type" );

  FUNC4( (uint8_t)mode);
  mode = (unsigned)FUNC3();
  FUNC2( L, mode );
  return 1;
}