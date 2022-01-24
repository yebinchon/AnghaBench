#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* sec; void* min; void* hour; void* day; void* mon; void* year; } ;
typedef  TYPE_1__ vfs_time ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_TIMEDEF_DAY ; 
 int /*<<< orphan*/  FILE_TIMEDEF_HOUR ; 
 int /*<<< orphan*/  FILE_TIMEDEF_MIN ; 
 int /*<<< orphan*/  FILE_TIMEDEF_MON ; 
 int /*<<< orphan*/  FILE_TIMEDEF_SEC ; 
 int /*<<< orphan*/  FILE_TIMEDEF_YEAR ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4( lua_State *L, vfs_time *tm )
{
  int idx = FUNC2( L );

  // extract items from table
  FUNC1( L, idx, "year" );
  FUNC1( L, idx, "mon" );
  FUNC1( L, idx, "day" );
  FUNC1( L, idx, "hour" );
  FUNC1( L, idx, "min" );
  FUNC1( L, idx, "sec" );

  tm->year = FUNC0( L, ++idx, FILE_TIMEDEF_YEAR );
  tm->mon  = FUNC0( L, ++idx, FILE_TIMEDEF_MON );
  tm->day  = FUNC0( L, ++idx, FILE_TIMEDEF_DAY );
  tm->hour = FUNC0( L, ++idx, FILE_TIMEDEF_HOUR );
  tm->min  = FUNC0( L, ++idx, FILE_TIMEDEF_MIN );
  tm->sec  = FUNC0( L, ++idx, FILE_TIMEDEF_SEC );

  // remove items from stack
  FUNC3( L, 6 );
}