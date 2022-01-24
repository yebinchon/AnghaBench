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
 unsigned int LIGHT_SLEEP_T ; 
 unsigned int MODEM_SLEEP_T ; 
 unsigned int NONE_SLEEP_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

__attribute__((used)) static int FUNC7( lua_State* L )
{
  unsigned type;

  if ( FUNC1(L, 1) )
  {
    type = FUNC4(L, 1);
    FUNC0(L, (type == NONE_SLEEP_T || type == LIGHT_SLEEP_T || type == MODEM_SLEEP_T), 1, "range:0-2");
    if(!FUNC6(type)){
      FUNC3(L);
      return 1;
    }
  }

  type = FUNC5();
  FUNC2( L, type );
  return 1;
}