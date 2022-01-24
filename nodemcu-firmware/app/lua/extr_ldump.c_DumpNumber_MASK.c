#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  float lua_Number ;
struct TYPE_7__ {int sizeof_lua_Number; int /*<<< orphan*/  is_arm_fpa; scalar_t__ lua_Number_integral; } ;
struct TYPE_8__ {TYPE_1__ target; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (double,TYPE_2__*) ; 
 int /*<<< orphan*/  LUA_ERR_CC_NOTINTEGER ; 
 int /*<<< orphan*/  FUNC2 (char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(lua_Number x, DumpState* D)
{
#if defined( LUA_NUMBER_INTEGRAL ) && !defined( LUA_CROSS_COMPILER )
  DumpIntWithSize(x,D->target.sizeof_lua_Number,D);
#else // #if defined( LUA_NUMBER_INTEGRAL ) && !defined( LUA_CROSS_COMPILER )
 if (D->target.lua_Number_integral)
 {
  if (((float)(int)x)!=x) D->status=LUA_ERR_CC_NOTINTEGER;
  FUNC0(x,D->target.sizeof_lua_Number,D);
 }
 else
 {
  switch(D->target.sizeof_lua_Number)
  {
   /* do we need bounds checking? */
   case 4: {
    float y=x;
    FUNC2((char*)&y,4,D);
    FUNC1(y,D);
   } break;
   case 8: {
    double y=x;
    // ARM FPA mode: keep endianness, but swap high and low parts of the
    // memory representation. This is the default compilation mode for ARM
    // targets with non-EABI gcc
    if(D->target.is_arm_fpa)
    {
      char *pnum=(char*)&y, temp[4];
      FUNC4(temp,pnum,4);
      FUNC4(pnum,pnum+4,4);
      FUNC4(pnum+4,temp,4);
    }
    FUNC2((char*)&y,8,D);
    FUNC1(y,D);
   } break;
   default: FUNC3(0);
  }
 }
#endif // #if defined( LUA_NUMBER_INTEGRAL ) && !defined( LUA_CROSS_COMPILER )
}