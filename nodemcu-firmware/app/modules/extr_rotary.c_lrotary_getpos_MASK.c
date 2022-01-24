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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PRESS ; 
 int /*<<< orphan*/  RELEASE ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rotary ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  unsigned int id;
  id = FUNC2( L, 1 );
  FUNC1( rotary, id );

  int pos = FUNC4(id);

  if (pos == -1) {
    return 0;
  }

  FUNC3(L, (pos << 1) >> 1);
  FUNC3(L, (pos & 0x80000000) ? FUNC0(PRESS) : FUNC0(RELEASE));

  return 2;
}