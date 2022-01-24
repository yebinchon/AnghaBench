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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 scalar_t__ LUAL_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  ow ; 

__attribute__((used)) static int FUNC8( lua_State *L )
{
  unsigned id = FUNC4( L, 1 );
  FUNC0( ow, id );
  u32 size = ( u32 )FUNC4( L, 2 );
  if( size == 0 )
    return 0;

  FUNC2(L, size <= LUAL_BUFFERSIZE, 2, "Attempt to read too many characters");

  luaL_Buffer b;
  FUNC3( L, &b );
  char *p = FUNC5(&b);

  FUNC7(id, (uint8_t *)p, size);

  FUNC1(&b, size);
  FUNC6( &b );
  return 1;
}