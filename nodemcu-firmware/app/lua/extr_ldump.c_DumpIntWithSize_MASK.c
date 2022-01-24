#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_6__ {void* status; } ;
typedef  TYPE_1__ DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* LUA_ERR_CC_INTOVERFLOW ; 
 int /*<<< orphan*/  FUNC2 (char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int x, int sizeof_int, DumpState* D)
{
 /* dump signed integer */
 switch(sizeof_int) {
  case 1: {
   if (x>0x7F || x<(-0x80)) D->status=LUA_ERR_CC_INTOVERFLOW;
   FUNC0(x,D);
  } break;
  case 2: {
   if (x>0x7FFF || x<(-0x8000)) D->status=LUA_ERR_CC_INTOVERFLOW;
   int16_t y=(int16_t)x;
   FUNC2((char*)&y,2,D);
   FUNC1(y,D);
  } break;
  case 4: {
   /* Need to reduce bounds by 1 to avoid messing 32-bit compilers up */
   if (x>0x7FFFFFFE || x<(-0x7FFFFFFF)) D->status=LUA_ERR_CC_INTOVERFLOW;
   int32_t y=(int32_t)x;
   FUNC2((char*)&y,4,D);
   FUNC1(y,D);
  } break;
  default: FUNC3(0);
 }
}