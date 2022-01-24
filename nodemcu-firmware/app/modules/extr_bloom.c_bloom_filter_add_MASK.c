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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  bloom_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(lua_State *L) {
  bloom_t *filter = (bloom_t *)FUNC2(L, 1, "bloom.filter");
  size_t length;
  const uint8 *buffer = (uint8 *) FUNC1(L, 2, &length);

  bool rc = FUNC0(buffer, length, filter, true);

  FUNC3(L, rc);
  return 1;
}