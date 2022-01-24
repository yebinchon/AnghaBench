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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_7__ {int sizeof_strsize_t; } ;
struct TYPE_8__ {void* status; TYPE_1__ target; } ;
typedef  TYPE_2__ DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*) ; 
 void* LUA_ERR_CC_INTOVERFLOW ; 
 int /*<<< orphan*/  FUNC2 (char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uint32_t x, DumpState* D)
{
 /* dump unsigned integer */
 switch(D->target.sizeof_strsize_t) {
  case 1: {
   if (x>0xFF) D->status=LUA_ERR_CC_INTOVERFLOW;
   FUNC0(x,D);
  } break;
  case 2: {
   if (x>0xFFFF) D->status=LUA_ERR_CC_INTOVERFLOW;
   uint16_t y=(uint16_t)x;
   FUNC2((char*)&y,2,D);
   FUNC1(y,D);
  } break;
  case 4: {
   /* Reduce bounds to avoid messing 32-bit compilers up */
   if (x>0xFFFFFFFE) D->status=LUA_ERR_CC_INTOVERFLOW;
   uint32_t y=x;
   FUNC2((char*)&y,4,D);
   FUNC1(y,D);
  } break;
  default: FUNC3(0);
 }
}