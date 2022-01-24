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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rotary ; 

__attribute__((used)) static int FUNC6( lua_State* L )
{
  unsigned int id;
  id = FUNC3( L, 1 );
  FUNC0( rotary, id );

  int mask = FUNC3(L, 2);

  if (FUNC5(L) >= 3) {
    if (FUNC2(L, id, mask, 3)) {
      return FUNC4( L, "Unable to set callback." );
    }
  } else {
    FUNC1(L, id, mask);
  }

  return 0;
}