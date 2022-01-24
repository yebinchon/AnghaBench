#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_4__ {int numsize; scalar_t__ toflt; } ;
typedef  TYPE_1__ LoadState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static lua_Number FUNC2(LoadState* S)
{
 lua_Number x;
 if(S->toflt)
 {
  switch(S->numsize)
  {
   case 1: {
    int8_t y;
    FUNC0(S,y);
    x = (lua_Number)y;
   } break;
   case 2: {
    int16_t y;
    FUNC0(S,y);
    x = (lua_Number)y;
   } break;
   case 4: {
    int32_t y;
    FUNC0(S,y);
    x = (lua_Number)y;
   } break;
   case 8: {
    int64_t y;
    FUNC0(S,y);
    x = (lua_Number)y;
   } break;
   default: FUNC1(0);
  }
 }
 else
 {
  FUNC0(S,x); /* should probably handle more cases for float here... */
 }
 return x;
}