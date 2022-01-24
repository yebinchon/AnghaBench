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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4( lua_State* L )
{
  size_t len;
  FUNC1(L);
  if( !FUNC3() )
  {
    FUNC0( "\n*** ERROR ***: unable to format. FS might be compromised.\n" );
    FUNC0( "It is advised to re-flash the NodeMCU image.\n" );
    FUNC2(L, "Failed to format file system");
  }
  else{
    FUNC0( "format done.\n" );
  }
  return 0;
}