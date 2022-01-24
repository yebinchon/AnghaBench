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
typedef  int /*<<< orphan*/  u32 ;
typedef  void* s32 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int NORMAL_PWM_DEPTH ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC4 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  pwm ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  s32 freq;	  // signed, to error check for negative values
  unsigned duty;
  unsigned id;

  id = FUNC1( L, 1 );
  if(id==0)
    return FUNC2( L, "no pwm for D0" );
  FUNC0( pwm, id );
  freq = FUNC1( L, 2 );
  if ( freq <= 0 )
    return FUNC2( L, "wrong arg range" );
  duty = FUNC1( L, 3 );
  if ( duty > NORMAL_PWM_DEPTH )
    // Negative values will turn out > 100, so will also fail.
    return FUNC2( L, "wrong arg range" );
  freq = FUNC4( id, (u32)freq, duty );
  if(freq==0)
    return FUNC2( L, "too many pwms." );
  FUNC3( L, freq );
  return 1;
}