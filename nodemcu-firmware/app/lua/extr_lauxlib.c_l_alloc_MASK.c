#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int egcmode; scalar_t__ memlimit; } ;

/* Variables and functions */
 int EGC_ALWAYS ; 
 int EGC_ON_ALLOC_FAILURE ; 
 int EGC_ON_MEM_LIMIT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (void*,size_t,size_t) ; 

__attribute__((used)) static void *FUNC6 (void *ud, void *ptr, size_t osize, size_t nsize) {
  lua_State *L = (lua_State *)ud;
  int mode = L == NULL ? 0 : FUNC0(L)->egcmode;
  void *nptr;

  if (nsize == 0) {
#ifdef DEBUG_ALLOCATOR
    return (void *)this_realloc(ptr, osize, nsize);
#else
    FUNC1(ptr);
    return NULL;
#endif
  }
  if (L != NULL && (mode & EGC_ALWAYS)) /* always collect memory if requested */
    FUNC3(L);
#ifndef LUA_CROSS_COMPILER
  if (L != NULL && (mode & EGC_ON_MEM_LIMIT) && FUNC0(L)->memlimit < 0 &&
      (FUNC4() < (-FUNC0(L)->memlimit)))
    FUNC3(L);
#endif
  if(nsize > osize && L != NULL) {
#if defined(LUA_STRESS_EMERGENCY_GC)
    luaC_fullgc(L);
#endif
    if(FUNC0(L)->memlimit > 0 && (mode & EGC_ON_MEM_LIMIT) && FUNC2(L, nsize - osize))
      return NULL;
  }
  nptr = (void *)FUNC5(ptr, osize, nsize);
  if (nptr == NULL && L != NULL && (mode & EGC_ON_ALLOC_FAILURE)) {
    FUNC3(L); /* emergency full collection. */
    nptr = (void *)FUNC5(ptr, osize, nsize); /* try allocation again */
  }
  return nptr;
}