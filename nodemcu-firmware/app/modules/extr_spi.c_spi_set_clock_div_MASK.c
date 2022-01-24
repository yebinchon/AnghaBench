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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  spi ; 
 void* FUNC3 (int,void*) ; 

__attribute__((used)) static int FUNC4( lua_State *L )
{
  int id = FUNC1( L, 1 );

  FUNC0( spi, id );

  u32 clk_div = FUNC1( L, 2 );

  u32 old_div = FUNC3(id, clk_div);

  FUNC2( L, old_div );

  return 1;
}