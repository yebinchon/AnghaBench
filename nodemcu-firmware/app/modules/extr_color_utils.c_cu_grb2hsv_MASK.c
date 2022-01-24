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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(lua_State *L) {

  const int g = FUNC2(L, 1);
  const int r = FUNC2(L, 2);
  const int b = FUNC2(L, 3);

  FUNC1(L, g == r && g == b, 1, "greyscale value cannot be converted to hsv");

  uint32_t hsv = FUNC0(g, r, b);

  uint16_t h = (hsv & 0xFFFF0000) >> 16;
  uint8_t s = (hsv & 0x0000FF00) >>  8;
  uint8_t v = (hsv & 0x000000FF) >>  0;

  // return
  FUNC3(L, h);
  FUNC3(L, s);
  FUNC3(L, v);

  return 3;
}