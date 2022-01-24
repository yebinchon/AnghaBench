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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 scalar_t__ LUA_MAX_FLASH_SIZE ; 
 int WORDSHIFT ; 
 scalar_t__ curOffset ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ flashImage ; 

__attribute__((used)) static void *FUNC2(lua_State* L, size_t n) {
  void *p = (void *)(flashImage + curOffset);
  curOffset += FUNC0(n)>>WORDSHIFT;
  if (curOffset > LUA_MAX_FLASH_SIZE) {
    FUNC1("Out of Flash memory");
  }
  return p;
}