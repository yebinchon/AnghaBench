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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(lua_State *L) {
  const int hue = FUNC2(L, 1);
  const int sat = FUNC2(L, 2);
  const int val = FUNC2(L, 3);

  FUNC1(L, hue >= 0 && hue <= 360, 1, "should be a 0-360");
  FUNC1(L, sat >= 0 && sat <= 255, 2, "should be 0-255");
  FUNC1(L, val >= 0 && val <= 255, 3, "should be 0-255");

  // convert to grbw
  uint32_t tmp_color = FUNC0(hue, sat, val);

  // return g, r, b, w
  FUNC3(L, (tmp_color & 0xFF000000) >> 24);
  FUNC3(L, (tmp_color & 0x00FF0000) >> 16);
  FUNC3(L, (tmp_color & 0x0000FF00) >> 8);
  FUNC3(L, (tmp_color & 0x000000FF));

  return 4;
}