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
typedef  int /*<<< orphan*/  DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  ROTARY_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  rotary ; 
 scalar_t__ FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6( lua_State* L )
{
  unsigned int id;

  id = FUNC3( L, 1 );
  FUNC0( rotary, id );
  FUNC1(L, id, ROTARY_ALL);

  DATA *d = data[id];
  if (d) {
    data[id] = NULL;
    FUNC2(d);
  }

  if (FUNC5( id )) {
    return FUNC4( L, "Unable to close switch." );
  }
  return 0;
}