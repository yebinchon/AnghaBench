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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  uart ; 
 int uart0_echo ; 

__attribute__((used)) static int FUNC6( lua_State* L )
{
  uint32_t id, databits, parity, stopbits, echo = 1;
  uint32_t baud, res;

  id = FUNC1( L, 1 );
  FUNC0( uart, id );

  baud = FUNC1( L, 2 );
  databits = FUNC1( L, 3 );
  parity = FUNC1( L, 4 );
  stopbits = FUNC1( L, 5 );
  if(FUNC2(L,6)){
    echo = FUNC4(L,6);
    if(echo!=0)
      uart0_echo = true;
    else
      uart0_echo = false;
  }

  res = FUNC5( id, baud, databits, parity, stopbits );
  FUNC3( L, res );
  return 1;
}