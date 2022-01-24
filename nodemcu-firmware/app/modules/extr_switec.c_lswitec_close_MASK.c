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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  switec ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  unsigned int id;

  id = FUNC2( L, 1 );
  FUNC0( switec, id );
  FUNC1(L, id);
  if (FUNC4( id )) {
    return FUNC3( L, "Unable to close stepper." );
  }
  return 0;
}