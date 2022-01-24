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
typedef  int /*<<< orphan*/  LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const*) ; 

void FUNC3(LPVOID mem
#if SDBAPI_DEBUG_ALLOC
    , int line, const char* file
#endif
    )
{
#if SDBAPI_DEBUG_ALLOC
    SdbpRemoveAllocation(mem, line, file);
#endif
    FUNC0(FUNC1(), 0, mem);
}