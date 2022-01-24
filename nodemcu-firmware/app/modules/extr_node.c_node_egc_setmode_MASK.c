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
 unsigned int EGC_ALWAYS ; 
 unsigned int EGC_ON_ALLOC_FAILURE ; 
 unsigned int EGC_ON_MEM_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(lua_State* L) {
  unsigned mode  = FUNC2(L, 1);
  int limit = FUNC3 (L, 2, 0);

  FUNC1(L, mode <= (EGC_ON_ALLOC_FAILURE | EGC_ON_MEM_LIMIT | EGC_ALWAYS), 1, "invalid mode");
  FUNC1(L, !(mode & EGC_ON_MEM_LIMIT) || limit!=0, 1, "limit must be non-zero");

  FUNC0( L, mode, limit );
  return 0;
}