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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3( lua_State* L ) {
  // Run three times
  uint16_t x1, y1, x2, y2, x3, y3;
  FUNC1(&x1, &y1);
  FUNC1(&x2, &y2);
  FUNC1(&x3, &y3);

  // Average the two best results
  int16_t x = FUNC0(x1,x2,x3);
  int16_t y = FUNC0(y1,y2,y3);

  FUNC2( L, x);
  FUNC2( L, y);
  return 2;
}