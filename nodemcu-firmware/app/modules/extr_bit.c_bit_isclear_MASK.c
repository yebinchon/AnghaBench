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
typedef  int lua_UInteger ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2( lua_State* L )
{
  lua_UInteger val = ( lua_UInteger )FUNC0( L, 1 );
  unsigned pos = ( unsigned )FUNC0( L, 2 );

  FUNC1( L, val & ( 1 << pos ) ? 0 : 1 );
  return 1;
}