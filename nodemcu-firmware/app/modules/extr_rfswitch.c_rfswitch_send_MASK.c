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
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC2( lua_State *L )
{
  unsigned int protocol_id = FUNC0( L, 1 );
  unsigned int pulse_length = FUNC0( L, 2 );
  unsigned int repeat = FUNC0( L, 3 );
  unsigned int pin = FUNC0( L, 4 );
  unsigned long value = FUNC0( L, 5 );
  unsigned long length = FUNC0( L, 6 );
  FUNC1(protocol_id, pulse_length, repeat, pin, value, length);
  return 0;
}