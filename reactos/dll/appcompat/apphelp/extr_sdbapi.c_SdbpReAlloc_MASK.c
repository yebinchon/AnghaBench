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
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*) ; 

LPVOID FUNC3(LPVOID mem, SIZE_T size, SIZE_T oldSize
#if SDBAPI_DEBUG_ALLOC
    , int line, const char* file
#endif
    )
{
    LPVOID newmem = FUNC0(FUNC1(), HEAP_ZERO_MEMORY, mem, size);
#if SDBAPI_DEBUG_ALLOC
    SdbpUpdateAllocation(mem, newmem, size, line, file);
#endif
    return newmem;
}